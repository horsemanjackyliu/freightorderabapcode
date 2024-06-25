@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ZR_FORDER_ITEMS'

define view entity ZR_FORDER_ITEMS
  as select from ztb_forder_items
  association to parent ZR_FREIGHTORDER as _FREIGHTORDER on $projection.TransportationOrderUuid = _FREIGHTORDER.Transportationorderuuid
{

  key transportation_order_item  as TransportationOrderItem,      
      transportation_order_uuid  as TransportationOrderUuid,
      transp_ord_item            as TranspOrdItem,
      transp_ord_item_type       as TranspOrdItemType,
      transp_ord_item_category   as TranspOrdItemCategory,
      transp_ord_item_desc       as TranspOrdItemDesc,
      source_stop_uuid           as SourceStopUuid,
      destination_stop_uuid      as DestinationStopUuid,
      shipper_uuid               as ShipperUuid,
      shipper                    as Shipper,
      shipper_address_id         as ShipperAddressId,
      consignee_uuid             as ConsigneeUuid,
      consignee                  as Consignee,
      consignee_address_id       as ConsigneeAddressId,
      transp_base_document       as TranspBaseDocument,
      transp_base_document_type  as TranspBaseDocumentType,
      transp_base_document_item  as TranspBaseDocumentItem,
      transportation_equipment_g as TransportationEquipmentG,
      transportation_equipment_t as TransportationEquipmentT,
      transp_equipment_plate_num as TranspEquipmentPlateNum,
      transp_equip_registration  as TranspEquipRegistration,
      transp_ord_item_package_id as TranspOrdItemPackageId,
      product_id                 as ProductId,
      material_freight_group     as MaterialFreightGroup,
      transportation_group       as TransportationGroup,
      @Semantics.quantity: {
      unitOfMeasure: 'TranspOrdItemQuantityU'
      }
      transp_ord_item_quantity   as TranspOrdItemQuantity,
      transp_ord_item_quantity_u as TranspOrdItemQuantityU,
      @Semantics.quantity: {
      unitOfMeasure: 'TranspOrdItemGrossWe2'
      }
      transp_ord_item_gross_weig as TranspOrdItemGrossWeig,
      transp_ord_item_gross_we_2 as TranspOrdItemGrossWe2,
      @Semantics.quantity: {
      unitOfMeasure: 'TranspOrdItemGrossVo2'
      }
      transp_ord_item_gross_volu as TranspOrdItemGrossVolu,
      transp_ord_item_gross_vo_2 as TranspOrdItemGrossVo2,
      @Semantics.quantity: {
          unitOfMeasure: 'TranspOrdItemNetWeig2'
      }
      transp_ord_item_net_weight as TranspOrdItemNetWeight,
      transp_ord_item_net_weig_2 as TranspOrdItemNetWeig2,
      transp_ord_item_dngrs_gds  as TranspOrdItemDngrsGds,
      repositoryid as Repositoryid,
      fileobjectid as Fileobjectid, 
      _FREIGHTORDER
}
