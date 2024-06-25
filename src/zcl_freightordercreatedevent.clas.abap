CLASS zcl_freightordercreatedevent DEFINITION
  PUBLIC
  INHERITING FROM zcl_freightordercrea_6412_base
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS zif_freightorderc_1822_handler~handle_freightorder_created_v1
        REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_FREIGHTORDERCREATEDEVENT IMPLEMENTATION.


  METHOD zif_freightorderc_1822_handler~handle_freightorder_created_v1.


    DATA:
      ls_entity_key           TYPE zcl_freightorder_consumption=>tys_freight_order_type,
      ls_business_data_header TYPE zcl_freightorder_consumption=>tys_freight_order_type,
      lo_http_client          TYPE REF TO if_web_http_client,
      lo_resource             TYPE REF TO /iwbep/if_cp_resource_entity,
      lo_client_proxy         TYPE REF TO /iwbep/if_cp_client_proxy,
      lo_request              TYPE REF TO /iwbep/if_cp_request_read,
      lo_request_list         TYPE REF TO /iwbep/if_cp_request_read_list,
      lo_response             TYPE REF TO /iwbep/if_cp_response_read.
    DATA:
      lt_business_data_item TYPE TABLE OF zcl_freightorder_consumption=>tys_freight_order_item_type,
      ls_business_data_item LIKE LINE OF lt_business_data_item,
      lo_response_items     TYPE REF TO /iwbep/if_cp_response_read_lst.
    DATA:
      lo_filter_factory          TYPE REF TO /iwbep/if_cp_filter_factory,
      lo_filter_node_1           TYPE REF TO /iwbep/if_cp_filter_node,
      lo_filter_node_2           TYPE REF TO /iwbep/if_cp_filter_node,
      lo_filter_node_root        TYPE REF TO /iwbep/if_cp_filter_node,
      lt_range_TRANSP_ORDER_ITEM TYPE RANGE OF sysuuid_x16,
      lt_range_TRANSP_ORDER_UUID TYPE RANGE OF sysuuid_x16,
      ls_range_TRANSP_ORDER_UUID LIKE LINE OF lt_range_TRANSP_ORDER_UUID.



    DATA ls_business_data TYPE STRUCTURE FOR HIERARCHY Z_FreightOrder_Created_v1_568B.
    DATA wa TYPE ztb_freightorder .
    DATA wa_item TYPE ztb_forder_items .
    ls_business_data = io_event->get_business_data( ).
    wa-carrier = ls_business_data-Carrier.
    wa-transportationmode = ls_business_data-TransportationMode.
    wa-transportationorder = ls_business_data-TransportationOrder .
    wa-transportationordertype = ls_business_data-TransportationOrderType .
    wa-transportationorderuuid = ls_business_data-TransportationOrderUUID .
    wa-transportationshippingtype = ls_business_data-TransportationShippingType .



    TRY.
        " Create http client
        DATA(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                                                     comm_scenario  = 'ZARR_FREIGHTORDER_OBND'
                                                     comm_system_id = 'S4HC_MY300018'
                                                     service_id     = 'ZFREIGHTORDER_S4HC_REST' ).
        lo_http_client = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).
        lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v4_remote_proxy(
          EXPORTING
             is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                 proxy_model_id      = 'ZFREIGHTORDER_CONSUMPTION'
                                                 proxy_model_version = '0001' )
            io_http_client             = lo_http_client
            iv_relative_service_root   = ''
             ).

        ASSERT lo_http_client IS BOUND.


        " Set entity key
        ls_entity_key = VALUE #(
                  transportation_order_uuid  = ls_business_data-TransportationOrderUUID ).



        " Navigate to the resource
        lo_resource = lo_client_proxy->create_resource_for_entity_set( 'FREIGHT_ORDER' )->navigate_with_key( ls_entity_key ).

        " Execute the request and retrieve the business data
        lo_response = lo_resource->create_request_for_read( )->execute( ).
        lo_response->get_business_data( IMPORTING es_business_data = ls_business_data_header ).
        MOVE-CORRESPONDING ls_business_data_header TO wa .
        INSERT ztb_freightorder FROM @wa .

*        out->write( ls_business_data-transportation_order ).



        lo_request_list = lo_client_proxy->create_resource_for_entity_set( 'FREIGHT_ORDER_ITEM' )->create_request_for_read( ).

        lo_filter_factory = lo_request_list->create_filter_factory( ).

*lo_filter_node_1  = lo_filter_factory->create_by_range( iv_property_path     = 'TRANSPORTATION_ORDER_ITEM'
*                                                        it_range             = lt_range_TRANSPORTATION_ORDER_ITEM ).


        ls_range_TRANSP_ORDER_UUID-sign = 'I'.
        ls_range_TRANSP_ORDER_UUID-option = 'EQ' .
        ls_range_TRANSP_ORDER_UUID-low = ls_business_data-TransportationOrderUUID .
        ls_range_TRANSP_ORDER_UUID-high = ls_business_data-TransportationOrderUUID .
        APPEND ls_range_TRANSP_ORDER_UUID TO lt_range_TRANSP_ORDER_UUID .


        lo_filter_node_2  = lo_filter_factory->create_by_range( iv_property_path     = 'TRANSPORTATION_ORDER_UUID'
                                                                it_range             = lt_range_TRANSP_ORDER_UUID ).

        lo_request_list->set_filter( lo_filter_node_2 ).


        lo_response_items = lo_request_list->execute( ).
        lo_response_items->get_business_data( IMPORTING et_business_data = lt_business_data_item ).

        IF lt_business_data_item[] IS NOT INITIAL .
          LOOP AT lt_business_data_item INTO ls_business_data_item .
            MOVE-CORRESPONDING ls_business_data_item TO wa_item .
            INSERT ztb_forder_items FROM @wa_item .
          ENDLOOP.
        ENDIF.

      CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
*        out->write( 'error in remote' ).
        " Handle remote Exception
        " It contains details about the problems of your http(s) connection

      CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
*        out->write( 'error in gateway' ).
        " Handle Exception

      CATCH cx_web_http_client_error INTO DATA(lx_web_http_client_error).
        " Handle Exception
        RAISE SHORTDUMP lx_web_http_client_error.


    ENDTRY.











  ENDMETHOD.
ENDCLASS.
