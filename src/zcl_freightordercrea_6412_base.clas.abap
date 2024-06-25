class ZCL_FREIGHTORDERCREA_6412_BASE definition
  public
  abstract
  create public .

public section.

  interfaces /IWXBE/IF_CONSUMER .
  interfaces ZIF_FREIGHTORDERC_1822_HANDLER
      all methods abstract .
protected section.
private section.

  constants:
    GENERATED_AT TYPE STRING VALUE `20231205072937` .
  constants:
    GENERATION_VERSION TYPE I VALUE 1 .
ENDCLASS.



CLASS ZCL_FREIGHTORDERCREA_6412_BASE IMPLEMENTATION.


METHOD /IWXBE/IF_CONSUMER~HANDLE_EVENT.

  " This is a generated class, which might be overwritten in the future.
  " Go to ZCL_FREIGHTORDERCREATEDEVENT to add custom code.

  CASE io_event->get_cloud_event_type( ).
    WHEN 'sap.s4.beh.FreightOrder.Created.v1'.
      me->ZIF_FREIGHTORDERC_1822_HANDLER~handle_freightorder_created_v1( NEW LCL_FREIGHTORDER_CREATED_V1( io_event ) ).
    WHEN OTHERS.
      RAISE EXCEPTION TYPE /iwxbe/cx_exception
        EXPORTING
          textid = /iwxbe/cx_exception=>not_supported.
  ENDCASE.

ENDMETHOD.
ENDCLASS.
