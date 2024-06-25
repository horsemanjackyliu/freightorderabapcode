@EndUserText.label: 'Projection view for ZR_FORDER_ITEMS'
@AccessControl.authorizationCheck: #CHECK
@Metadata: {
    allowExtensions: true
}

@Search: {
    searchable: true
}
@ObjectModel.semanticKey: [ 'TranspOrdItem' ]
@ObjectModel.query.implementedBy:'ABAP:ZCL_FO_QUEQRY'

define view entity ZC_FORDER_ITEMS
  as projection on ZR_FORDER_ITEMS
{
  key TransportationOrderItem,
      @Consumption.hidden: true
      TransportationOrderUuid,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      TranspOrdItem,
      TranspOrdItemType,
      TranspOrdItemCategory,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      TranspOrdItemDesc,
      SourceStopUuid,
      DestinationStopUuid,
      ShipperUuid,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      Shipper,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      ShipperAddressId,
      ConsigneeUuid,
      Consignee,
      ConsigneeAddressId,
      TranspBaseDocument,
      TranspBaseDocumentType,
      TranspBaseDocumentItem,
      TransportationEquipmentG,
      TransportationEquipmentT,
      TranspEquipmentPlateNum,
      TranspEquipRegistration,
      TranspOrdItemPackageId,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      ProductId,
      MaterialFreightGroup,
      TransportationGroup,
      TranspOrdItemQuantity,
      TranspOrdItemQuantityU,
      TranspOrdItemGrossWeig,
      TranspOrdItemGrossWe2,
      TranspOrdItemGrossVolu,
      TranspOrdItemGrossVo2,
      TranspOrdItemNetWeight,
      TranspOrdItemNetWeig2,
      TranspOrdItemDngrsGds,
      Repositoryid,
      Fileobjectid,
      /* Associations */
      _FREIGHTORDER : redirected to parent ZC_FREIGHTORDER

}
