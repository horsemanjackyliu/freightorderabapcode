CLASS LCL_FREIGHTORDER_CREATED_V1 DEFINITION FINAL.
  PUBLIC SECTION.
    INTERFACES:
      ZIF_FREIGHTORDER_CREATED__C1D8.

    METHODS:
      CONSTRUCTOR
        IMPORTING
          IO_EVENT TYPE REF TO /IWXBE/IF_CONSUMER_EVENT.
  PRIVATE SECTION.
    DATA:
      MO_EVENT TYPE REF TO /IWXBE/IF_CONSUMER_EVENT.

ENDCLASS.

CLASS LCL_FREIGHTORDER_CREATED_V1 IMPLEMENTATION.
  METHOD CONSTRUCTOR.
      mo_event = io_event.
  ENDMETHOD.
  METHOD /IWXBE/IF_CONSUMER_EVENT~GET_ARRIVAL_TIMESTAMP.
      rv_timestamp = mo_event->get_arrival_timestamp( ).
  ENDMETHOD.
  METHOD /IWXBE/IF_CONSUMER_EVENT~GET_BUSINESS_DATA.
      mo_event->get_business_data( IMPORTING es_business_data = es_business_data ).
  ENDMETHOD.
  METHOD /IWXBE/IF_CONSUMER_EVENT~GET_CLOUD_EVENT_ID.
      rv_id = mo_event->get_cloud_event_id( ).
  ENDMETHOD.
  METHOD /IWXBE/IF_CONSUMER_EVENT~GET_CLOUD_EVENT_SOURCE.
      rv_source = mo_event->get_cloud_event_source( ).
  ENDMETHOD.
  METHOD /IWXBE/IF_CONSUMER_EVENT~GET_CLOUD_EVENT_TIMESTAMP.
      rv_timestamp = mo_event->get_cloud_event_timestamp( ).
  ENDMETHOD.
  METHOD /IWXBE/IF_CONSUMER_EVENT~GET_CLOUD_EVENT_TYPE.
      rv_type = mo_event->get_cloud_event_type( ).
  ENDMETHOD.
  METHOD /IWXBE/IF_CONSUMER_EVENT~GET_CUSTOM_EXT_ATTR_VALUE.
        mo_event->get_custom_ext_attr_value(
          EXPORTING
            iv_name = iv_name
          IMPORTING
            ev_custom_extension_attr = ev_custom_extension_attr ).
  ENDMETHOD.
  METHOD ZIF_FREIGHTORDER_CREATED__C1D8~GET_BUSINESS_DATA.
      mo_event->get_business_data( IMPORTING es_business_data = rs_business_data ).
  ENDMETHOD.
ENDCLASS.
