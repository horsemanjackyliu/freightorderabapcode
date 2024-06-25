@EndUserText.label: 'ZC_FREIGHTORDER'
@AccessControl.authorizationCheck:  #CHECK
@Metadata: {
    allowExtensions: true
}

@Search: {
    searchable: true
}
@ObjectModel.semanticKey: [ 'Transportationorderuuid' ]
@ObjectModel.query.implementedBy:'ABAP:ZCL_FO_QUEQRY'

define root view entity ZC_FREIGHTORDER as projection on ZR_FREIGHTORDER

{
    key Transportationorderuuid,
      @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.9
    Transportationorder,
    CarrierUuid,
      @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.9
    Carrier,
    ShipperUuid,
      @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.9
    Shipper,
    ShipperAddressId,
    ConsigneeUuid,
      @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.9
    Consignee,
      @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.9
    ConsigneeAddressId,
    TranspPurgOrg,
    TranspPurgGroup,
    PurgOrgCompanyCode,
    CarrierAccountNumber,
    TranspOrdInvoicingCarri,
    CreatedByUser,
    Transportationmode,
    Transportationordertype,
    Transportationshippingtype,
    Transppurgorgextid,
    TransportationModeCatego,
    TranspOrdExecutionIsBl,
    TransportationOrderExec,
    Repositoryid,
    Fileobjectid,
    /* Associations */
    _ITEMS:redirected to composition child ZC_FORDER_ITEMS
}

