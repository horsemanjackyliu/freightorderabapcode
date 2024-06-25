@AccessControl.authorizationCheck:  #CHECK
@EndUserText.label: 'ZR_FREIGHTORDER'

define root view entity ZR_FREIGHTORDER as select from ztb_freightorder
composition [0..*] of ZR_FORDER_ITEMS as _ITEMS
{
    key transportationorderuuid as Transportationorderuuid,
    transportationorder as Transportationorder,
    carrier_uuid as CarrierUuid,
    carrier as Carrier,
    shipper_uuid as ShipperUuid,
    shipper as Shipper,
    shipper_address_id as ShipperAddressId,
    consignee_uuid as ConsigneeUuid,
    consignee as Consignee,
    consignee_address_id as ConsigneeAddressId,
    transp_purg_org as TranspPurgOrg,
    transp_purg_group as TranspPurgGroup,
    purg_org_company_code as PurgOrgCompanyCode,
    carrier_account_number as CarrierAccountNumber,
    transp_ord_invoicing_carri as TranspOrdInvoicingCarri,
    created_by_user as CreatedByUser,
    creation_date_time as CreationDateTime,
    transportationmode as Transportationmode,
    transportationordertype as Transportationordertype,
    transportationshippingtype as Transportationshippingtype,
    transppurgorgextid as Transppurgorgextid,
    transportation_mode_catego as TransportationModeCatego,
    transp_ord_execution_is_bl as TranspOrdExecutionIsBl,
    transportation_order_exec as TransportationOrderExec,
    repositoryid as Repositoryid,
    fileobjectid as Fileobjectid, 
    _ITEMS // Make association public
}
