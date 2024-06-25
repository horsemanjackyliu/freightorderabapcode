@EndUserText.label: 'Z_FreightOrder_Created_v1_568B generated'
define root abstract entity Z_FreightOrder_Created_v1_568B
{
  @Event.element.externalName: 'Carrier'
  Carrier : abap.strg;
  @Event.element.externalName: 'TransportationMode'
  TransportationMode : abap.strg;
  @Event.element.externalName: 'TransportationOrder'
  TransportationOrder : abap.strg;
  @Event.element.externalName: 'TransportationOrderType'
  TransportationOrderType : abap.strg;
  @Event.element.externalName: 'TransportationOrderUUID'
  TransportationOrderUUID : abap.raw( 16 );
  @Event.element.externalName: 'TransportationShippingType'
  TransportationShippingType : abap.strg;
  @Event.element.externalName: 'TranspPurgOrgExtID'
  TranspPurgOrgExtID : abap.strg;
  
}
