interface ZIF_FREIGHTORDERC_1822_HANDLER
  public .


  methods HANDLE_FREIGHTORDER_CREATED_V1
    importing
      !IO_EVENT type ref to ZIF_FREIGHTORDER_CREATED__C1D8
    raising
      /IWXBE/CX_EXCEPTION .
endinterface.
