CLASS zcl_fo_queqry DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_FO_QUEQRY IMPLEMENTATION.


  METHOD if_rap_query_provider~select.

              DATA(lv_offset) = io_request->get_paging( )->get_offset( ).
              DATA(lv_page_size) = io_request->get_paging( )->get_page_size( ).
              DATA(lv_max_rows) = COND #( WHEN lv_page_size = if_rap_query_paging=>page_size_unlimited
                                          THEN 0 ELSE lv_page_size ).
              DATA(lt_req_elements) = io_request->get_requested_elements( ).
              DATA(lv_req_elements)  = concat_lines_of( table = lt_req_elements sep = `,` ).
              DATA(lv_sql_filter) = io_request->get_filter( )->get_as_sql_string( ).
              data(lv_parameters) = io_request->get_parameters( ).
              data(lv_entities) = io_request->get_entity_id( ).



  TRY.



  CASE io_request->get_entity_id( ).
  WHEN 'ZC_FORDER_ITEMS' .

              IF io_request->is_data_requested( ).

              DATA lt_fo_items_response TYPE STANDARD TABLE OF ZC_FORDER_ITEMS.
               SELECT (lv_req_elements) FROM ZC_Forder_ITEMS
               WHERE (lv_sql_filter)
               ORDER BY TransportationOrderItem
               INTO CORRESPONDING FIELDS OF TABLE @lt_fo_items_response
               OFFSET @lv_offset UP TO @lv_max_rows ROWS.
               io_response->set_data( lt_fo_items_response  ).
*               CATCH cx_rap_query_response_set_twic.

             ENDIF .

           IF io_request->is_total_numb_of_rec_requested( ).
**select count
              SELECT COUNT( * ) FROM ZR_FORDER_ITEMS
                                WHERE (lv_sql_filter)
                                INTO @DATA(lv_count).
**fill response
              io_response->set_total_number_of_records( lv_count ).
            ENDIF.

  WHEN 'ZC_FREIGHTORDER' .
  IF io_request->is_data_requested( ).

              DATA lt_fo_headers_response TYPE STANDARD TABLE OF ZC_FREIGHTORDER.

               SELECT (lv_req_elements) FROM ZC_FREIGHTORDER
               WHERE (lv_sql_filter)
               ORDER BY Transportationorder
               INTO CORRESPONDING FIELDS OF TABLE @lt_fo_headers_response
               OFFSET @lv_offset UP TO @lv_max_rows ROWS.

               io_response->set_data( lt_fo_headers_response  ).



  ENDIF.

             IF io_request->is_total_numb_of_rec_requested( ).
**select count
              SELECT COUNT( * ) FROM ZR_FREIGHTORDER
                                WHERE (lv_sql_filter)
                                INTO @DATA(lv_count1).
**fill response
              io_response->set_total_number_of_records( lv_count1 ).
            ENDIF.




  ENDCASE.

        CATCH cx_root INTO DATA(exception).
        DATA(exception_message) = cl_message_helper=>get_latest_t100_exception( exception )->if_message~get_longtext( ).

  ENDTRY.
  ENDMETHOD.
ENDCLASS.
