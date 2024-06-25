CLASS zcl_freighorder_read DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.



    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_FREIGHORDER_READ IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA:
      ls_entity_key    TYPE zcl_freightorder_consumption=>tys_freight_order_type,
      ls_business_data TYPE zcl_freightorder_consumption=>tys_freight_order_type,
      lo_http_client   TYPE REF TO if_web_http_client,
      lo_resource      TYPE REF TO /iwbep/if_cp_resource_entity,
      lo_client_proxy  TYPE REF TO /iwbep/if_cp_client_proxy,
      lo_request       TYPE REF TO /iwbep/if_cp_request_read,
      lo_request_list  TYPE REF TO /iwbep/if_cp_request_read_list,
      lo_response      TYPE REF TO /iwbep/if_cp_response_read.
    DATA:
      lt_business_data  TYPE TABLE OF zcl_freightorder_consumption=>tys_freight_order_item_type,
      lo_response_items TYPE REF TO /iwbep/if_cp_response_read_lst.
    DATA:
      lo_filter_factory          TYPE REF TO /iwbep/if_cp_filter_factory,
      lo_filter_node_1           TYPE REF TO /iwbep/if_cp_filter_node,
      lo_filter_node_2           TYPE REF TO /iwbep/if_cp_filter_node,
      lo_filter_node_root        TYPE REF TO /iwbep/if_cp_filter_node,
      lt_range_TRANSP_ORDER_ITEM TYPE RANGE OF sysuuid_x16,
      lt_range_TRANSP_ORDER_UUID TYPE RANGE OF sysuuid_x16,
      ls_range_TRANSP_ORDER_UUID LIKE LINE OF lt_range_TRANSP_ORDER_UUID.



*      DATA lo_uuid  type ref to if_system_uuid.
*      data lv_uuid type sysuuid_c36 .

    DELETE FROM ztb_freightorder .
    out->write( 'data deleted from table  ztb_freightorder' ) .
    DELETE FROM ztb_forder_items .
    out->write( 'data deleted from table ztb_forder_items' ) .

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
                  transportation_order_uuid  = 'B5CC25F01D291EDEB4EF781746481020' ).



        " Navigate to the resource
        lo_resource = lo_client_proxy->create_resource_for_entity_set( 'FREIGHT_ORDER' )->navigate_with_key( ls_entity_key ).

        " Execute the request and retrieve the business data
        lo_response = lo_resource->create_request_for_read( )->execute( ).
        lo_response->get_business_data( IMPORTING es_business_data = ls_business_data ).
        out->write( ls_business_data-transportation_order ).



        lo_request_list = lo_client_proxy->create_resource_for_entity_set( 'FREIGHT_ORDER_ITEM' )->create_request_for_read( ).

        lo_filter_factory = lo_request_list->create_filter_factory( ).

*lo_filter_node_1  = lo_filter_factory->create_by_range( iv_property_path     = 'TRANSPORTATION_ORDER_ITEM'
*                                                        it_range             = lt_range_TRANSPORTATION_ORDER_ITEM ).


        ls_range_TRANSP_ORDER_UUID-sign = 'I'.
        ls_range_TRANSP_ORDER_UUID-option = 'EQ' .
        ls_range_TRANSP_ORDER_UUID-low = 'B5CC25F01D291EDEB4EF781746481020' .
        ls_range_TRANSP_ORDER_UUID-high = 'B5CC25F01D291EDEB4EF781746481020' .
        APPEND ls_range_TRANSP_ORDER_UUID TO lt_range_TRANSP_ORDER_UUID .


        lo_filter_node_2  = lo_filter_factory->create_by_range( iv_property_path     = 'TRANSPORTATION_ORDER_UUID'
                                                                it_range             = lt_range_TRANSP_ORDER_UUID ).

        lo_request_list->set_filter( lo_filter_node_2 ).


        lo_response_items = lo_request_list->execute( ).
        lo_response_items->get_business_data( IMPORTING et_business_data = lt_business_data ).


        LOOP AT lt_business_data ASSIGNING FIELD-SYMBOL(<fs_data>) .
          out->write( <fs_data>-transp_ord_item ).

        ENDLOOP.

      CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
        out->write( 'error in remote' ).
        " Handle remote Exception
        " It contains details about the problems of your http(s) connection

      CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
        out->write( 'error in gateway' ).
        " Handle Exception

      CATCH cx_web_http_client_error INTO DATA(lx_web_http_client_error).
        " Handle Exception
        RAISE SHORTDUMP lx_web_http_client_error.


    ENDTRY.






  ENDMETHOD.
ENDCLASS.
