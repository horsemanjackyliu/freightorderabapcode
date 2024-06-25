interface ZIF_FREIGHTORDER_CREATED__C1D8
  public .


  interfaces /IWXBE/IF_CONSUMER_EVENT .

  aliases GET_ARRIVAL_TIMESTAMP
    for /IWXBE/IF_CONSUMER_EVENT~get_arrival_timestamp .
  aliases GET_CLOUD_EVENT_ID
    for /IWXBE/IF_CONSUMER_EVENT~get_cloud_event_id .
  aliases GET_CLOUD_EVENT_SOURCE
    for /IWXBE/IF_CONSUMER_EVENT~get_cloud_event_source .
  aliases GET_CLOUD_EVENT_TIMESTAMP
    for /IWXBE/IF_CONSUMER_EVENT~get_cloud_event_timestamp .
  aliases GET_CLOUD_EVENT_TYPE
    for /IWXBE/IF_CONSUMER_EVENT~get_cloud_event_type .
  aliases GET_CUSTOM_EXT_ATTR_VALUE
    for /IWXBE/IF_CONSUMER_EVENT~get_custom_ext_attr_value .

  types:
    TY_S_FREIGHTORDER_CREATED_V1 TYPE STRUCTURE FOR HIERARCHY Z_FreightOrder_Created_v1_568B .

  methods GET_BUSINESS_DATA
    returning
      value(RS_BUSINESS_DATA) type ty_s_freightorder_created_v1
    raising
      /IWXBE/CX_EXCEPTION .
endinterface.
