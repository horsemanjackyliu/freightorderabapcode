"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>com.sap.gateway.srvd_a2x.api_freightorder.v0001</em>
CLASS zcl_freightorder_consumption DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for "OData Primitive Types"</p>
      BEGIN OF tys_types_for_prim_types,
        "! Used for primitive type TRANSPORTATION_ORDER
        transportation_order       TYPE c LENGTH 20,
        "! Used for primitive type TRANSPORTATION_ORDER_ITEM
        transportation_order_item  TYPE sysuuid_x16,
        "! Used for primitive type TRANSPORTATION_ORDER_STOP
        transportation_order_stop  TYPE sysuuid_x16,
        "! Used for primitive type TRANSPORTATION_ORDER_TYPE
        transportation_order_type  TYPE c LENGTH 4,
        "! Used for primitive type TRANSP_ORD_EVENT_CODE
        transp_ord_event_code      TYPE c LENGTH 20,
        "! Used for primitive type TRANSP_ORD_EVT_ACTUAL_DATE
        transp_ord_evt_actual_date TYPE timestamp,
        "! Used for primitive type TRANSP_ORD_EVT_ESTIMATED_D
        transp_ord_evt_estimated_d TYPE timestamp,
      END OF tys_types_for_prim_types.

    TYPES:
      "! <p class="shorttext synchronized">Types for primitive collection fields</p>
      BEGIN OF tys_types_for_prim_colls,
        "! additionalTargets
        "! Used for TYS_SAP_MESSAGE-ADDITIONAL_TARGETS
        additional_targets TYPE string,
      END OF tys_types_for_prim_colls.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of D_FREIGHT_UNIT_ASSIGN_PARA</p>
      BEGIN OF tys_value_controls_1,
        "! FREIGHT_UNIT_UUID
        freight_unit_uuid TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_1.

    TYPES:
      "! <p class="shorttext synchronized">D_FreightUnitAssignParameter</p>
      BEGIN OF tys_d_freight_unit_assign_para,
        "! <em>Value Control Structure</em>
        value_controls    TYPE tys_value_controls_1,
        "! FreightUnitUUID
        freight_unit_uuid TYPE sysuuid_x16,
      END OF tys_d_freight_unit_assign_para,
      "! <p class="shorttext synchronized">List of D_FreightUnitAssignParameter</p>
      tyt_d_freight_unit_assign_para TYPE STANDARD TABLE OF tys_d_freight_unit_assign_para WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of D_FREIGHT_UNIT_UNASSIGN_PA</p>
      BEGIN OF tys_value_controls_2,
        "! FREIGHT_UNIT_UUID
        freight_unit_uuid TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_2.

    TYPES:
      "! <p class="shorttext synchronized">D_FreightUnitUnassignParameter</p>
      BEGIN OF tys_d_freight_unit_unassign_pa,
        "! <em>Value Control Structure</em>
        value_controls    TYPE tys_value_controls_2,
        "! FreightUnitUUID
        freight_unit_uuid TYPE sysuuid_x16,
      END OF tys_d_freight_unit_unassign_pa,
      "! <p class="shorttext synchronized">List of D_FreightUnitUnassignParameter</p>
      tyt_d_freight_unit_unassign_pa TYPE STANDARD TABLE OF tys_d_freight_unit_unassign_pa WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of SAP_MESSAGE</p>
      BEGIN OF tys_value_controls_3,
        "! TARGET
        target       TYPE /iwbep/v4_value_control,
        "! LONGTEXT_URL
        longtext_url TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_3.

    TYPES:
      "! <p class="shorttext synchronized">SAP__Message</p>
      BEGIN OF tys_sap_message,
        "! <em>Value Control Structure</em>
        value_controls     TYPE tys_value_controls_3,
        "! code
        code               TYPE string,
        "! message
        message            TYPE string,
        "! target
        target             TYPE string,
        "! additionalTargets
        additional_targets TYPE STANDARD TABLE OF tys_types_for_prim_colls-additional_targets WITH DEFAULT KEY,
        "! transition
        transition         TYPE abap_bool,
        "! numericSeverity
        numeric_severity   TYPE int1,
        "! longtextUrl
        longtext_url       TYPE string,
      END OF tys_sap_message,
      "! <p class="shorttext synchronized">List of SAP__Message</p>
      tyt_sap_message TYPE STANDARD TABLE OF tys_sap_message WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FREIGHT_ORDER_ITEM_SEAL_TY</p>
      BEGIN OF tys_value_controls_4,
        "! TRANSP_ORD_ITEM_SEALING_DA
        transp_ord_item_sealing_da TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_4.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FRT_ORD_CHRG_ELMNT_EXCH__2</p>
      BEGIN OF tys_value_controls_5,
        "! EXCHANGE_RATE_DATE
        exchange_rate_date TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_5.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FREIGHT_ORDER_DOC_REF_TYPE</p>
      BEGIN OF tys_value_controls_6,
        "! TRANSP_ORD_DOCUMENT_REFERE
        transp_ord_document_refere TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_6.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FRT_ORD_STOP_LOC_ADDR_DF_2</p>
      BEGIN OF tys_value_controls_7,
        "! FRT_ORD_STOP_LOC_ADDR_ADDL
        frt_ord_stop_loc_addr_addl TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_7.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FRT_ORD_BPADDR_DFLT_RPRS_2</p>
      BEGIN OF tys_value_controls_8,
        "! FRT_ORD_BPADDR_ADDL_RPRSTN
        frt_ord_bpaddr_addl_rprstn TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_8.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FRT_ORD_MAIN_BPADDR_DFLT_2</p>
      BEGIN OF tys_value_controls_9,
        "! FRT_ORD_MAIN_BPADDR_ADDL_R
        frt_ord_main_bpaddr_addl_r TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_9.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FREIGHT_ORDER_BUSINESS_P_2</p>
      BEGIN OF tys_value_controls_10,
        "! BUSINESS_PARTNER_UUID
        business_partner_uuid      TYPE /iwbep/v4_value_control,
        "! FRT_ORD_BPADDR_DFLT_RPRSTN
        frt_ord_bpaddr_dflt_rprstn TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_10.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FREIGHT_ORDER_ITEM_DOC_R_2</p>
      BEGIN OF tys_value_controls_11,
        "! TRANSP_ORD_ITM_DOC_REF_DAT
        transp_ord_itm_doc_ref_dat TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_11.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FREIGHT_ORDER_STAGE_TYPE</p>
      BEGIN OF tys_value_controls_12,
        "! CARRIER_UUID
        carrier_uuid               TYPE /iwbep/v4_value_control,
        "! TRANSP_ORD_STGE_INVCG_CA_2
        transp_ord_stge_invcg_ca_2 TYPE /iwbep/v4_value_control,
        "! TRANSP_ORD_STAGE_DEST_STOP
        transp_ord_stage_dest_stop TYPE /iwbep/v4_value_control,
        "! EXECTG_CARRIER_ADDR_DFLT_R
        exectg_carrier_addr_dflt_r TYPE /iwbep/v4_value_control,
        "! FRT_ORD_STAGE_BPADDR_DFLT
        frt_ord_stage_bpaddr_dflt  TYPE /iwbep/v4_value_control,
        "! INVCG_CARRIER_ADDR_DFLT_RP
        invcg_carrier_addr_dflt_rp TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_12.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FRT_ORD_ITM_MAIN_BPADDR__3</p>
      BEGIN OF tys_value_controls_13,
        "! FRT_ORD_ITM_MAIN_BPADDR_AD
        frt_ord_itm_main_bpaddr_ad TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_13.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FRT_ORD_CHRG_ITM_EXCH_RA_2</p>
      BEGIN OF tys_value_controls_14,
        "! EXCHANGE_RATE_DATE
        exchange_rate_date TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_14.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FRT_ORD_CHRG_ELEMENT_TYPE</p>
      BEGIN OF tys_value_controls_15,
        "! TRANSPORTATION_RATE_UUID
        transportation_rate_uuid   TYPE /iwbep/v4_value_control,
        "! TRANSP_CHARGE_CALCULATION
        transp_charge_calculation  TYPE /iwbep/v4_value_control,
        "! TRANSP_INDEX_RATE_TABLE_UU
        transp_index_rate_table_uu TYPE /iwbep/v4_value_control,
        "! FRT_ORD_CHRG_CALC_BASE
        frt_ord_chrg_calc_base     TYPE /iwbep/v4_value_control,
        "! FRT_ORD_CHRG_CALC_RULE
        frt_ord_chrg_calc_rule     TYPE /iwbep/v4_value_control,
        "! FRT_ORD_CHRG_ELMNT_EXCH_RA
        frt_ord_chrg_elmnt_exch_ra TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_15.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FRT_ORD_STGE_BPADDR_DFLT_2</p>
      BEGIN OF tys_value_controls_16,
        "! FRT_ORD_STGE_BPADDR_ADDL_R
        frt_ord_stge_bpaddr_addl_r TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_16.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure</p>
      BEGIN OF tys_value_controls_17,
        "! TRANSPORTATION_ORDER_ITEM
        transportation_order_item TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_17.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure</p>
      BEGIN OF tys_value_controls_18,
        "! TRANSPORTATION_ORDER_STOP
        transportation_order_stop  TYPE /iwbep/v4_value_control,
        "! TRANSP_ORD_EVT_ACTUAL_DATE
        transp_ord_evt_actual_date TYPE /iwbep/v4_value_control,
        "! TRANSP_ORD_EVT_ESTIMATED_D
        transp_ord_evt_estimated_d TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_18.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FREIGHT_ORDER_STOP_TYPE</p>
      BEGIN OF tys_value_controls_19,
        "! LOCATION_ADDITIONAL_UUID
        location_additional_uuid   TYPE /iwbep/v4_value_control,
        "! TRANSP_ORD_STOP_PLAN_TRANS
        transp_ord_stop_plan_trans TYPE /iwbep/v4_value_control,
        "! TRANSP_ORD_STOP_DTE_TME
        transp_ord_stop_dte_tme    TYPE /iwbep/v4_value_control,
        "! TRANSP_ORD_STOP_APPT_STRT
        transp_ord_stop_appt_strt  TYPE /iwbep/v4_value_control,
        "! TRANSP_ORD_STOP_APPT_END_D
        transp_ord_stop_appt_end_d TYPE /iwbep/v4_value_control,
        "! TRANSP_STOP_CARR_CONF_STRT
        transp_stop_carr_conf_strt TYPE /iwbep/v4_value_control,
        "! TRANSP_STOP_CARR_CONF_END
        transp_stop_carr_conf_end  TYPE /iwbep/v4_value_control,
        "! FREIGHT_ORDER_STAGE
        freight_order_stage        TYPE /iwbep/v4_value_control,
        "! FRT_ORD_STOP_LOC_ADDR_DFLT
        frt_ord_stop_loc_addr_dflt TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_19.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FREIGHT_ORDER_TYPE</p>
      BEGIN OF tys_value_controls_20,
        "! CARRIER_UUID
        carrier_uuid               TYPE /iwbep/v4_value_control,
        "! TRANSP_ORD_EXECUTING_CARRI
        transp_ord_executing_carri TYPE /iwbep/v4_value_control,
        "! SHIPPER_UUID
        shipper_uuid               TYPE /iwbep/v4_value_control,
        "! CONSIGNEE_UUID
        consignee_uuid             TYPE /iwbep/v4_value_control,
        "! CREATION_DATE_TIME
        creation_date_time         TYPE /iwbep/v4_value_control,
        "! CHANGED_DATE_TIME
        changed_date_time          TYPE /iwbep/v4_value_control,
        "! CARRIER_ADDR_DFLT_RPRSTN
        carrier_addr_dflt_rprstn   TYPE /iwbep/v4_value_control,
        "! CONSIGNEE_ADDR_DFLT_RPRSTN
        consignee_addr_dflt_rprstn TYPE /iwbep/v4_value_control,
        "! EXECTG_CARRIER_ADDR_DFLT_R
        exectg_carrier_addr_dflt_r TYPE /iwbep/v4_value_control,
        "! FREIGHT_ORDER_BUSINESS_PAR
        freight_order_business_par TYPE /iwbep/v4_value_control,
        "! FREIGHT_ORDER_CHARGE
        freight_order_charge       TYPE /iwbep/v4_value_control,
        "! FREIGHT_ORDER_DOCUMENT_REF
        freight_order_document_ref TYPE /iwbep/v4_value_control,
        "! FREIGHT_ORDER_EVENT
        freight_order_event        TYPE /iwbep/v4_value_control,
        "! FREIGHT_ORDER_ITEM
        freight_order_item         TYPE /iwbep/v4_value_control,
        "! FREIGHT_ORDER_STOP
        freight_order_stop         TYPE /iwbep/v4_value_control,
        "! FRT_ORD_MAIN_BPADDR_DFLT_R
        frt_ord_main_bpaddr_dflt_r TYPE /iwbep/v4_value_control,
        "! SHIPPER_ADDR_DFLT_RPRSTN
        shipper_addr_dflt_rprstn   TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_20.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FREIGHT_ORDER_CHARGE_ITE_2</p>
      BEGIN OF tys_value_controls_21,
        "! TRANSP_CHARGE_CALC_LEVEL_R
        transp_charge_calc_level_r TYPE /iwbep/v4_value_control,
        "! TRANSPORTATION_AGREEMENT_U
        transportation_agreement_u TYPE /iwbep/v4_value_control,
        "! BUSINESS_PARTNER_UUID
        business_partner_uuid      TYPE /iwbep/v4_value_control,
        "! TRANSP_CHARGE_ITEM_CALC_DA
        transp_charge_item_calc_da TYPE /iwbep/v4_value_control,
        "! EXCHANGE_RATE_DATE
        exchange_rate_date         TYPE /iwbep/v4_value_control,
        "! TRANSP_CHARGE_POSTING_DATE
        transp_charge_posting_date TYPE /iwbep/v4_value_control,
        "! FRT_ORD_CHRG_ELEMENT
        frt_ord_chrg_element       TYPE /iwbep/v4_value_control,
        "! FRT_ORD_CHRG_ITM_EXCH_RATE
        frt_ord_chrg_itm_exch_rate TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_21.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FREIGHT_ORDER_CHARGE_TYPE</p>
      BEGIN OF tys_value_controls_22,
        "! TRANSP_CHARGE_CALCULATION
        transp_charge_calculation TYPE /iwbep/v4_value_control,
        "! EXCHANGE_RATE_DATE
        exchange_rate_date        TYPE /iwbep/v4_value_control,
        "! FREIGHT_ORDER_CHARGE_ITEM
        freight_order_charge_item TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_22.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FREIGHT_ORDER_EVENT_TYPE</p>
      BEGIN OF tys_value_controls_23,
        "! TRANSP_ORD_EVT_ACTUAL_DATE
        transp_ord_evt_actual_date TYPE /iwbep/v4_value_control,
        "! TRANSP_ORD_EVT_ESTIMATED_D
        transp_ord_evt_estimated_d TYPE /iwbep/v4_value_control,
        "! LOCATION_ADDITIONAL_UUID
        location_additional_uuid   TYPE /iwbep/v4_value_control,
        "! TRANSPORTATION_ORDER_STOP
        transportation_order_stop  TYPE /iwbep/v4_value_control,
        "! CREATION_DATE_TIME
        creation_date_time         TYPE /iwbep/v4_value_control,
        "! CHANGED_DATE_TIME
        changed_date_time          TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_23.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of FREIGHT_ORDER_ITEM_TYPE</p>
      BEGIN OF tys_value_controls_24,
        "! SOURCE_STOP_UUID
        source_stop_uuid           TYPE /iwbep/v4_value_control,
        "! DESTINATION_STOP_UUID
        destination_stop_uuid      TYPE /iwbep/v4_value_control,
        "! SHIPPER_UUID
        shipper_uuid               TYPE /iwbep/v4_value_control,
        "! CONSIGNEE_UUID
        consignee_uuid             TYPE /iwbep/v4_value_control,
        "! FREIGHT_UNIT_UUID
        freight_unit_uuid          TYPE /iwbep/v4_value_control,
        "! PREDECESSOR_TRANSPORTATION
        predecessor_transportation TYPE /iwbep/v4_value_control,
        "! PRODUCT_UUID
        product_uuid               TYPE /iwbep/v4_value_control,
        "! CONSIGNEE_ADDR_DFLT_RPRSTN
        consignee_addr_dflt_rprstn TYPE /iwbep/v4_value_control,
        "! FREIGHT_ORDER_ITEM_COMMODI
        freight_order_item_commodi TYPE /iwbep/v4_value_control,
        "! FREIGHT_ORDER_ITEM_DOC_REF
        freight_order_item_doc_ref TYPE /iwbep/v4_value_control,
        "! FREIGHT_ORDER_ITEM_SEAL
        freight_order_item_seal    TYPE /iwbep/v4_value_control,
        "! FRT_ORD_ITM_MAIN_BPADDR_DF
        frt_ord_itm_main_bpaddr_df TYPE /iwbep/v4_value_control,
        "! SHIPPER_ADDR_DFLT_RPRSTN
        shipper_addr_dflt_rprstn   TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_24.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of action AssignFreightUnit</p>
      "! <em>with the internal name</em> ASSIGN_FREIGHT_UNIT
      BEGIN OF tys_parameters_1,
        "! TransportationOrderItemUUID
        transportation_order_item TYPE sysuuid_x16,
        "! _FreightUnits
        freight_units             TYPE tyt_d_freight_unit_assign_para,
        "! <em>Value Control Structure</em>
        value_controls            TYPE tys_value_controls_17,
      END OF tys_parameters_1,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_1</p>
      tyt_parameters_1 TYPE STANDARD TABLE OF tys_parameters_1 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of action CreateFreightOrder</p>
      "! <em>with the internal name</em> CREATE_FREIGHT_ORDER
      BEGIN OF tys_parameters_2,
        "! TransportationOrderType
        transportation_order_type TYPE c LENGTH 4,
        "! TransportationOrder
        transportation_order      TYPE c LENGTH 20,
      END OF tys_parameters_2,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_2</p>
      tyt_parameters_2 TYPE STANDARD TABLE OF tys_parameters_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of action ReportEvent</p>
      "! <em>with the internal name</em> REPORT_EVENT
      BEGIN OF tys_parameters_3,
        "! TranspOrdEventCode
        transp_ord_event_code      TYPE c LENGTH 20,
        "! TransportationOrderStopUUID
        transportation_order_stop  TYPE sysuuid_x16,
        "! TranspOrdEvtActualDateTime
        transp_ord_evt_actual_date TYPE timestamp,
        "! TranspOrdEvtEstimatedDateTime
        transp_ord_evt_estimated_d TYPE timestamp,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_18,
      END OF tys_parameters_3,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_3</p>
      tyt_parameters_3 TYPE STANDARD TABLE OF tys_parameters_3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of action UnassignFreightUnit</p>
      "! <em>with the internal name</em> UNASSIGN_FREIGHT_UNIT
      BEGIN OF tys_parameters_4,
        "! _FreightUnits
        freight_units TYPE tyt_d_freight_unit_unassign_pa,
      END OF tys_parameters_4,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_4</p>
      tyt_parameters_4 TYPE STANDARD TABLE OF tys_parameters_4 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FreightOrderBusinessPartner_Type</p>
      BEGIN OF tys_freight_order_business_p_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_10,
        "! <em>Key property</em> TransportationOrderBusPartUUID
        transportation_order_bus_p TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! BusinessPartnerUUID
        business_partner_uuid      TYPE sysuuid_x16,
        "! BusinessPartner
        business_partner           TYPE c LENGTH 10,
        "! TranspOrdBizPartnerFunction
        transp_ord_biz_partner_fun TYPE c LENGTH 2,
        "! TranspOrdBizPartnerAddressID
        transp_ord_biz_partner_add TYPE c LENGTH 40,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_freight_order_business_p_2,
      "! <p class="shorttext synchronized">List of FreightOrderBusinessPartner_Type</p>
      tyt_freight_order_business_p_2 TYPE STANDARD TABLE OF tys_freight_order_business_p_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FreightOrderChargeItem_Type</p>
      BEGIN OF tys_freight_order_charge_ite_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_21,
        "! <em>Key property</em> TranspChargeItemUUID
        transp_charge_item_uuid    TYPE sysuuid_x16,
        "! TransportationChargesObjUUID
        transportation_charges_obj TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! TranspChargeCalcLevelRefUUID
        transp_charge_calc_level_r TYPE sysuuid_x16,
        "! TransportationAgreementUUID
        transportation_agreement_u TYPE sysuuid_x16,
        "! BusinessPartnerUUID
        business_partner_uuid      TYPE sysuuid_x16,
        "! TranspChargeCalcLevel
        transp_charge_calc_level   TYPE c LENGTH 1,
        "! TranspChargePostingStatus
        transp_charge_posting_stat TYPE c LENGTH 2,
        "! TranspChrgItemDocCurrency
        transp_chrg_item_doc_curre TYPE c LENGTH 3,
        "! TranspChrgItmTotAmtInDocCrcy
        transp_chrg_itm_tot_amt_in TYPE decfloat34,
        "! TranspChrgItemLoclCurrency
        transp_chrg_item_locl_curr TYPE c LENGTH 3,
        "! TranspChrgItmTotAmtInLoclCrcy
        transp_chrg_itm_tot_amt__2 TYPE decfloat34,
        "! TranspChargeItemCalcDateTme
        transp_charge_item_calc_da TYPE timestamp,
        "! ExchangeRateDate
        exchange_rate_date         TYPE datn,
        "! TranspChargePostingDate
        transp_charge_posting_date TYPE datn,
        "! TranspChrgCalcDteTmeIsChanged
        transp_chrg_calc_dte_tme_i TYPE abap_bool,
        "! PaymentTerms
        payment_terms              TYPE c LENGTH 4,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_freight_order_charge_ite_2,
      "! <p class="shorttext synchronized">List of FreightOrderChargeItem_Type</p>
      tyt_freight_order_charge_ite_2 TYPE STANDARD TABLE OF tys_freight_order_charge_ite_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FreightOrderCharge_Type</p>
      BEGIN OF tys_freight_order_charge_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_22,
        "! <em>Key property</em> TransportationChargesObjUUID
        transportation_charges_obj TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! TranspChargePostingStatus
        transp_charge_posting_stat TYPE c LENGTH 2,
        "! TranspChargeCalcStatus
        transp_charge_calc_status  TYPE c LENGTH 2,
        "! TranspChargeDocumentCurrency
        transp_charge_document_cur TYPE c LENGTH 3,
        "! TranspChrgTotalAmtInDocCrcy
        transp_chrg_total_amt_in_d TYPE decfloat34,
        "! TranspChargeLocalCurrency
        transp_charge_local_curren TYPE c LENGTH 3,
        "! TranspChrgTotalAmtInLoclCrcy
        transp_chrg_total_amt_in_l TYPE decfloat34,
        "! TranspChargeCalculationDateTme
        transp_charge_calculation  TYPE timestamp,
        "! ExchangeRateDate
        exchange_rate_date         TYPE datn,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_freight_order_charge_type,
      "! <p class="shorttext synchronized">List of FreightOrderCharge_Type</p>
      tyt_freight_order_charge_type TYPE STANDARD TABLE OF tys_freight_order_charge_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FreightOrderDocRef_Type</p>
      BEGIN OF tys_freight_order_doc_ref_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_6,
        "! <em>Key property</em> TransportationOrderDocRefUUID
        transportation_order_doc_r TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! TranspOrdDocReferenceID
        transp_ord_doc_reference_i TYPE c LENGTH 35,
        "! TranspOrdDocReferenceType
        transp_ord_doc_reference_t TYPE c LENGTH 5,
        "! TranspOrdDocReferenceItmID
        transp_ord_doc_reference_2 TYPE c LENGTH 10,
        "! TranspOrdDocReferenceItmType
        transp_ord_doc_reference_3 TYPE c LENGTH 5,
        "! TranspOrdDocumentReferenceDate
        transp_ord_document_refere TYPE datn,
        "! TranspOrdDocRefIssuerName
        transp_ord_doc_ref_issuer  TYPE c LENGTH 40,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_freight_order_doc_ref_type,
      "! <p class="shorttext synchronized">List of FreightOrderDocRef_Type</p>
      tyt_freight_order_doc_ref_type TYPE STANDARD TABLE OF tys_freight_order_doc_ref_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FreightOrderEvent_Type</p>
      BEGIN OF tys_freight_order_event_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_23,
        "! <em>Key property</em> TransportationOrderEventUUID
        transportation_order_event TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! TransportationOrderEvent
        transportation_order_eve_2 TYPE c LENGTH 10,
        "! TranspOrdEventCode
        transp_ord_event_code      TYPE c LENGTH 20,
        "! TranspOrdEvtActualDateTime
        transp_ord_evt_actual_date TYPE timestamp,
        "! TranspOrdEvtActualDateTimeZone
        transp_ord_evt_actual_da_2 TYPE c LENGTH 6,
        "! TranspOrdEvtEstimatedDateTime
        transp_ord_evt_estimated_d TYPE timestamp,
        "! LocationAdditionalUUID
        location_additional_uuid   TYPE sysuuid_x16,
        "! TransportationOrderStopUUID
        transportation_order_stop  TYPE sysuuid_x16,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! CreationDateTime
        creation_date_time         TYPE timestamp,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! ChangedDateTime
        changed_date_time          TYPE timestamp,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_freight_order_event_type,
      "! <p class="shorttext synchronized">List of FreightOrderEvent_Type</p>
      tyt_freight_order_event_type TYPE STANDARD TABLE OF tys_freight_order_event_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FreightOrderItemCommodityCode_Type</p>
      BEGIN OF tys_freight_order_item_commo_2,
        "! <em>Key property</em> TranspOrdItemCommodityCodeUUID
        transp_ord_item_commodity  TYPE sysuuid_x16,
        "! TransportationOrderItemUUID
        transportation_order_item  TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! TranspOrdItemCommodityCode
        transp_ord_item_commodit_2 TYPE c LENGTH 30,
        "! TrOrdItmCmmdtyCodeNmbrngSchm
        tr_ord_itm_cmmdty_code_nmb TYPE c LENGTH 10,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_freight_order_item_commo_2,
      "! <p class="shorttext synchronized">List of FreightOrderItemCommodityCode_Type</p>
      tyt_freight_order_item_commo_2 TYPE STANDARD TABLE OF tys_freight_order_item_commo_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FreightOrderItemDocRef_Type</p>
      BEGIN OF tys_freight_order_item_doc_r_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_11,
        "! <em>Key property</em> TranspOrdItemDocReferenceUUID
        transp_ord_item_doc_refere TYPE sysuuid_x16,
        "! TransportationOrderItemUUID
        transportation_order_item  TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! TranspOrdItemDocReferenceID
        transp_ord_item_doc_refe_2 TYPE c LENGTH 35,
        "! TranspOrdItemDocReferenceType
        transp_ord_item_doc_refe_3 TYPE c LENGTH 5,
        "! TranspOrdItmDocReferenceItemID
        transp_ord_itm_doc_referen TYPE c LENGTH 10,
        "! TranspOrdItmDocRefItemType
        transp_ord_itm_doc_ref_ite TYPE c LENGTH 5,
        "! TranspOrdItmDocRefDate
        transp_ord_itm_doc_ref_dat TYPE datn,
        "! TranspOrdItemDocRefIssuerName
        transp_ord_item_doc_ref_is TYPE c LENGTH 40,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_freight_order_item_doc_r_2,
      "! <p class="shorttext synchronized">List of FreightOrderItemDocRef_Type</p>
      tyt_freight_order_item_doc_r_2 TYPE STANDARD TABLE OF tys_freight_order_item_doc_r_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FreightOrderItemSeal_Type</p>
      BEGIN OF tys_freight_order_item_seal_ty,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_4,
        "! <em>Key property</em> TranspOrdItemSealUUID
        transp_ord_item_seal_uuid  TYPE sysuuid_x16,
        "! TransportationOrderItemUUID
        transportation_order_item  TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! TranspOrdItemSealNumber
        transp_ord_item_seal_numbe TYPE c LENGTH 15,
        "! TranspOrdItemSealingDateTime
        transp_ord_item_sealing_da TYPE timestamp,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_freight_order_item_seal_ty,
      "! <p class="shorttext synchronized">List of FreightOrderItemSeal_Type</p>
      tyt_freight_order_item_seal_ty TYPE STANDARD TABLE OF tys_freight_order_item_seal_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FreightOrderItem_Type</p>
      BEGIN OF tys_freight_order_item_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_24,
        "! <em>Key property</em> TransportationOrderItemUUID
        transportation_order_item  TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! TranspOrdItem
        transp_ord_item            TYPE c LENGTH 10,
        "! TranspOrdItemType
        transp_ord_item_type       TYPE c LENGTH 4,
        "! TranspOrdItemCategory
        transp_ord_item_category   TYPE c LENGTH 3,
        "! TranspOrdItemParentItemUUID
        transp_ord_item_parent_ite TYPE sysuuid_x16,
        "! TranspOrdItemDesc
        transp_ord_item_desc       TYPE c LENGTH 40,
        "! IsMainCargoItem
        is_main_cargo_item         TYPE abap_bool,
        "! TranspOrdItemSorting
        transp_ord_item_sorting    TYPE c LENGTH 6,
        "! SourceStopUUID
        source_stop_uuid           TYPE sysuuid_x16,
        "! DestinationStopUUID
        destination_stop_uuid      TYPE sysuuid_x16,
        "! ShipperUUID
        shipper_uuid               TYPE sysuuid_x16,
        "! Shipper
        shipper                    TYPE c LENGTH 10,
        "! ShipperAddressID
        shipper_address_id         TYPE c LENGTH 40,
        "! ConsigneeUUID
        consignee_uuid             TYPE sysuuid_x16,
        "! Consignee
        consignee                  TYPE c LENGTH 10,
        "! ConsigneeAddressID
        consignee_address_id       TYPE c LENGTH 40,
        "! FreightUnitUUID
        freight_unit_uuid          TYPE sysuuid_x16,
        "! PredecessorTransportationOrder
        predecessor_transportation TYPE sysuuid_x16,
        "! TranspBaseDocument
        transp_base_document       TYPE c LENGTH 35,
        "! TranspBaseDocumentType
        transp_base_document_type  TYPE c LENGTH 5,
        "! TranspBaseDocumentItem
        transp_base_document_item  TYPE c LENGTH 10,
        "! TranspBaseDocumentItemType
        transp_base_document_ite_2 TYPE c LENGTH 5,
        "! TransportationEquipmentGroup
        transportation_equipment_g TYPE c LENGTH 3,
        "! TransportationEquipmentType
        transportation_equipment_t TYPE c LENGTH 10,
        "! TranspEquipmentIsShipperOwned
        transp_equipment_is_shippe TYPE abap_bool,
        "! TranspEquipmentPlateNumber
        transp_equipment_plate_num TYPE c LENGTH 20,
        "! TranspEquipRegistrationCountry
        transp_equip_registration  TYPE c LENGTH 3,
        "! TranspEquipCapacityLength
        transp_equip_capacity_leng TYPE p LENGTH 7 DECIMALS 3,
        "! TranspEquipCapacityWidth
        transp_equip_capacity_widt TYPE p LENGTH 7 DECIMALS 3,
        "! TranspEquipCapacityHeight
        transp_equip_capacity_heig TYPE p LENGTH 7 DECIMALS 3,
        "! TranspEquipCapacityUnit
        transp_equip_capacity_unit TYPE c LENGTH 3,
        "! TranspEquipCapacityWeight
        transp_equip_capacity_weig TYPE p LENGTH 16 DECIMALS 14,
        "! TranspEquipCapacityWeightUnit
        transp_equip_capacity_we_2 TYPE c LENGTH 3,
        "! TranspEquipCapacityVolume
        transp_equip_capacity_volu TYPE p LENGTH 16 DECIMALS 14,
        "! TranspEquipCapacityVolumeUnit
        transp_equip_capacity_vo_2 TYPE c LENGTH 3,
        "! TranspOrdItemPackageID
        transp_ord_item_package_id TYPE c LENGTH 35,
        "! ProductUUID
        product_uuid               TYPE sysuuid_x16,
        "! ProductID
        product_id                 TYPE c LENGTH 18,
        "! MaterialFreightGroup
        material_freight_group     TYPE c LENGTH 8,
        "! TransportationGroup
        transportation_group       TYPE c LENGTH 4,
        "! TranspOrdItmMinTemp
        transp_ord_itm_min_temp    TYPE p LENGTH 4 DECIMALS 2,
        "! TranspOrdItmMaxTemp
        transp_ord_itm_max_temp    TYPE p LENGTH 4 DECIMALS 2,
        "! TranspOrdItemTemperatureUnit
        transp_ord_item_temperatur TYPE c LENGTH 3,
        "! TranspOrdItemQuantity
        transp_ord_item_quantity   TYPE p LENGTH 16 DECIMALS 14,
        "! TranspOrdItemQuantityUnit
        transp_ord_item_quantity_u TYPE c LENGTH 3,
        "! TranspOrdItemGrossWeight
        transp_ord_item_gross_weig TYPE p LENGTH 16 DECIMALS 14,
        "! TranspOrdItemGrossWeightUnit
        transp_ord_item_gross_we_2 TYPE c LENGTH 3,
        "! TranspOrdItemGrossVolume
        transp_ord_item_gross_volu TYPE p LENGTH 16 DECIMALS 14,
        "! TranspOrdItemGrossVolumeUnit
        transp_ord_item_gross_vo_2 TYPE c LENGTH 3,
        "! TranspOrdItemNetWeight
        transp_ord_item_net_weight TYPE p LENGTH 16 DECIMALS 14,
        "! TranspOrdItemNetWeightUnit
        transp_ord_item_net_weig_2 TYPE c LENGTH 3,
        "! TranspOrdItemDngrsGdsSts
        transp_ord_item_dngrs_gds  TYPE c LENGTH 1,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_freight_order_item_type,
      "! <p class="shorttext synchronized">List of FreightOrderItem_Type</p>
      tyt_freight_order_item_type TYPE STANDARD TABLE OF tys_freight_order_item_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FreightOrderStage_Type</p>
      BEGIN OF tys_freight_order_stage_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_12,
        "! <em>Key property</em> TransportationOrderStageUUID
        transportation_order_stage TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! TransportationOrderStage
        transportation_order_sta_2 TYPE c LENGTH 10,
        "! TranspOrdStageType
        transp_ord_stage_type      TYPE c LENGTH 3,
        "! TranspOrdStageCategory
        transp_ord_stage_category  TYPE c LENGTH 1,
        "! TransportationMode
        transportation_mode        TYPE c LENGTH 2,
        "! TransportationModeCategory
        transportation_mode_catego TYPE c LENGTH 1,
        "! TranspOrdStgeInvcgCarrLvl
        transp_ord_stge_invcg_carr TYPE c LENGTH 2,
        "! CarrierUUID
        carrier_uuid               TYPE sysuuid_x16,
        "! Carrier
        carrier                    TYPE c LENGTH 10,
        "! TranspOrdStageSCACCode
        transp_ord_stage_scaccode  TYPE c LENGTH 4,
        "! TranspOrdStgeInvcgCarrUUID
        transp_ord_stge_invcg_ca_2 TYPE sysuuid_x16,
        "! TranspOrdStageInvoicingCarrier
        transp_ord_stage_invoicing TYPE c LENGTH 10,
        "! TranspOrdStgeInvcgSCACCode
        transp_ord_stge_invcg_scac TYPE c LENGTH 4,
        "! TranspOrdStageDistance
        transp_ord_stage_distance  TYPE p LENGTH 15 DECIMALS 6,
        "! TranspOrdStageDistanceUnit
        transp_ord_stage_distanc_2 TYPE c LENGTH 3,
        "! TranspOrdStageNetDuration
        transp_ord_stage_net_durat TYPE p LENGTH 6 DECIMALS 0,
        "! TranspOrdStageSrceStopUUID
        transp_ord_stage_srce_stop TYPE sysuuid_x16,
        "! TranspOrdStageDestStopUUID
        transp_ord_stage_dest_stop TYPE sysuuid_x16,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_freight_order_stage_type,
      "! <p class="shorttext synchronized">List of FreightOrderStage_Type</p>
      tyt_freight_order_stage_type TYPE STANDARD TABLE OF tys_freight_order_stage_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FreightOrderStop_Type</p>
      BEGIN OF tys_freight_order_stop_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_19,
        "! <em>Key property</em> TransportationOrderStopUUID
        transportation_order_stop  TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! TransportationOrderStop
        transportation_order_sto_2 TYPE c LENGTH 10,
        "! TranspOrdStopCategory
        transp_ord_stop_category   TYPE c LENGTH 1,
        "! TranspOrdStopRole
        transp_ord_stop_role       TYPE c LENGTH 2,
        "! LocationAdditionalUUID
        location_additional_uuid   TYPE sysuuid_x16,
        "! LocationId
        location_id                TYPE c LENGTH 20,
        "! LocationUNCode
        location_uncode            TYPE c LENGTH 5,
        "! LocationIATACode
        location_iatacode          TYPE c LENGTH 3,
        "! TranspOrdStopPlanTranspDteTme
        transp_ord_stop_plan_trans TYPE timestamp,
        "! TranspOrdStopDteTme
        transp_ord_stop_dte_tme    TYPE timestamp,
        "! TranspOrdStopApptStrtDteTme
        transp_ord_stop_appt_strt  TYPE timestamp,
        "! TranspOrdStopApptEndDteTme
        transp_ord_stop_appt_end_d TYPE timestamp,
        "! TranspStopCarrConfStrtDteTme
        transp_stop_carr_conf_strt TYPE timestamp,
        "! TranspStopCarrConfEndDteTme
        transp_stop_carr_conf_end  TYPE timestamp,
        "! TranspOrdStopSequencePosition
        transp_ord_stop_sequence_p TYPE c LENGTH 1,
        "! TranspOrdStopHndlgExecStatus
        transp_ord_stop_hndlg_exec TYPE c LENGTH 2,
        "! TranspOrdStopExecIsBlocked
        transp_ord_stop_exec_is_bl TYPE abap_bool,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_freight_order_stop_type,
      "! <p class="shorttext synchronized">List of FreightOrderStop_Type</p>
      tyt_freight_order_stop_type TYPE STANDARD TABLE OF tys_freight_order_stop_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FreightOrder_Type</p>
      BEGIN OF tys_freight_order_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_20,
        "! <em>Key property</em> TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! TransportationOrder
        transportation_order       TYPE c LENGTH 20,
        "! TransportationOrderType
        transportation_order_type  TYPE c LENGTH 4,
        "! TransportationOrderCategory
        transportation_order_categ TYPE c LENGTH 2,
        "! TransportationShippingType
        transportation_shipping_ty TYPE c LENGTH 3,
        "! TransportationMode
        transportation_mode        TYPE c LENGTH 2,
        "! TransportationModeCategory
        transportation_mode_catego TYPE c LENGTH 1,
        "! CarrierUUID
        carrier_uuid               TYPE sysuuid_x16,
        "! Carrier
        carrier                    TYPE c LENGTH 10,
        "! StandardCarrierAlphaCode
        standard_carrier_alpha_cod TYPE c LENGTH 4,
        "! TranspOrdExecutingCarrierUUID
        transp_ord_executing_carri TYPE sysuuid_x16,
        "! TranspOrdExecutingCarrier
        transp_ord_executing_car_2 TYPE c LENGTH 10,
        "! ShipperUUID
        shipper_uuid               TYPE sysuuid_x16,
        "! Shipper
        shipper                    TYPE c LENGTH 10,
        "! ShipperAddressID
        shipper_address_id         TYPE c LENGTH 40,
        "! ConsigneeUUID
        consignee_uuid             TYPE sysuuid_x16,
        "! Consignee
        consignee                  TYPE c LENGTH 10,
        "! ConsigneeAddressID
        consignee_address_id       TYPE c LENGTH 40,
        "! TranspPurgOrg
        transp_purg_org            TYPE c LENGTH 8,
        "! TranspPurgOrgExtID
        transp_purg_org_ext_id     TYPE c LENGTH 20,
        "! TranspPurgGroup
        transp_purg_group          TYPE c LENGTH 8,
        "! TranspPurgGroupExtID
        transp_purg_group_ext_id   TYPE c LENGTH 20,
        "! PurgOrgCompanyCode
        purg_org_company_code      TYPE c LENGTH 4,
        "! CarrierAccountNumber
        carrier_account_number     TYPE c LENGTH 14,
        "! TranspMeansOfTransport
        transp_means_of_transport  TYPE c LENGTH 10,
        "! TranspOrdPartnerReference
        transp_ord_partner_referen TYPE c LENGTH 35,
        "! TranspOrdResponsiblePerson
        transp_ord_responsible_per TYPE c LENGTH 12,
        "! TranspOrdHasMltplExectgPties
        transp_ord_has_mltpl_exect TYPE abap_bool,
        "! TranspOrdInvoicingCarrierLevel
        transp_ord_invoicing_carri TYPE c LENGTH 2,
        "! TranspOrdLifeCycleStatus
        transp_ord_life_cycle_stat TYPE c LENGTH 2,
        "! TranspOrderSubcontrgSts
        transp_order_subcontrg_sts TYPE c LENGTH 2,
        "! TransportationOrderConfSts
        transportation_order_conf  TYPE c LENGTH 2,
        "! TransportationOrderExecSts
        transportation_order_exec  TYPE c LENGTH 2,
        "! TranspOrdGoodsMovementStatus
        transp_ord_goods_movement  TYPE c LENGTH 1,
        "! TranspOrdWhseProcessingStatus
        transp_ord_whse_processing TYPE c LENGTH 1,
        "! TranspOrderDngrsGdsSts
        transp_order_dngrs_gds_sts TYPE c LENGTH 1,
        "! TranspOrdExecutionIsBlocked
        transp_ord_execution_is_bl TYPE abap_bool,
        "! TransportationOrderCrtnType
        transportation_order_crtn  TYPE c LENGTH 2,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! CreationDateTime
        creation_date_time         TYPE timestamp,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! ChangedDateTime
        changed_date_time          TYPE timestamp,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_freight_order_type,
      "! <p class="shorttext synchronized">List of FreightOrder_Type</p>
      tyt_freight_order_type TYPE STANDARD TABLE OF tys_freight_order_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FrtOrdBPAddrAddlRprstn_Type</p>
      BEGIN OF tys_frt_ord_bpaddr_addl_rprs_2,
        "! <em>Key property</em> TransportationOrderBusPartUUID
        transportation_order_bus_p TYPE sysuuid_x16,
        "! <em>Key property</em> AddressRepresentationCode
        address_representation_cod TYPE c LENGTH 1,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! AddressID
        address_id                 TYPE c LENGTH 10,
        "! AddresseeFullName
        addressee_full_name        TYPE c LENGTH 80,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! Country
        country                    TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_frt_ord_bpaddr_addl_rprs_2,
      "! <p class="shorttext synchronized">List of FrtOrdBPAddrAddlRprstn_Type</p>
      tyt_frt_ord_bpaddr_addl_rprs_2 TYPE STANDARD TABLE OF tys_frt_ord_bpaddr_addl_rprs_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FrtOrdBPAddrDfltRprstn_Type</p>
      BEGIN OF tys_frt_ord_bpaddr_dflt_rprs_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_8,
        "! <em>Key property</em> TransportationOrderBusPartUUID
        transportation_order_bus_p TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! AddressID
        address_id                 TYPE c LENGTH 10,
        "! AddresseeFullName
        addressee_full_name        TYPE c LENGTH 80,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! Country
        country                    TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! EmailAddress
        email_address              TYPE c LENGTH 241,
        "! InternationalPhoneNumber
        international_phone_number TYPE c LENGTH 30,
        "! InternationalMobilePhoneNumber
        international_mobile_phone TYPE c LENGTH 30,
        "! InternationalFaxNumber
        international_fax_number   TYPE c LENGTH 30,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_frt_ord_bpaddr_dflt_rprs_2,
      "! <p class="shorttext synchronized">List of FrtOrdBPAddrDfltRprstn_Type</p>
      tyt_frt_ord_bpaddr_dflt_rprs_2 TYPE STANDARD TABLE OF tys_frt_ord_bpaddr_dflt_rprs_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FrtOrdChrgCalcBase_Type</p>
      BEGIN OF tys_frt_ord_chrg_calc_base_typ,
        "! <em>Key property</em> TranspChrgCalcBaseUUID
        transp_chrg_calc_base_uuid TYPE sysuuid_x16,
        "! TranspChargeItemElementUUID
        transp_charge_item_element TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! TranspChrgCalculationBase
        transp_chrg_calculation_ba TYPE c LENGTH 15,
        "! TranspScaleItemQuantityUnit
        transp_scale_item_quantity TYPE c LENGTH 3,
        "! TranspScaleItemQuantity
        transp_scale_item_quanti_2 TYPE p LENGTH 16 DECIMALS 14,
        "! TranspScaleItemCurrency
        transp_scale_item_currency TYPE c LENGTH 3,
        "! TranspScaleItemAmount
        transp_scale_item_amount   TYPE decfloat34,
        "! TranspScaleItemValueChar
        transp_scale_item_value_ch TYPE c LENGTH 255,
        "! TranspDataSourceQtyUnit
        transp_data_source_qty_uni TYPE c LENGTH 3,
        "! TranspDataSourceQuantity
        transp_data_source_quantit TYPE p LENGTH 16 DECIMALS 14,
        "! TranspDataSourceCurrency
        transp_data_source_currenc TYPE c LENGTH 3,
        "! TranspDataSourceAmount
        transp_data_source_amount  TYPE decfloat34,
        "! TranspDataSourceValueChar
        transp_data_source_value_c TYPE c LENGTH 255,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_frt_ord_chrg_calc_base_typ,
      "! <p class="shorttext synchronized">List of FrtOrdChrgCalcBase_Type</p>
      tyt_frt_ord_chrg_calc_base_typ TYPE STANDARD TABLE OF tys_frt_ord_chrg_calc_base_typ WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FrtOrdChrgCalcRule_Type</p>
      BEGIN OF tys_frt_ord_chrg_calc_rule_typ,
        "! <em>Key property</em> TranspChrgCalcRuleUUID
        transp_chrg_calc_rule_uuid TYPE sysuuid_x16,
        "! TranspChargeItemElementUUID
        transp_charge_item_element TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! TranspChrgCalculationBase
        transp_chrg_calculation_ba TYPE c LENGTH 15,
        "! TranspRateCalcRuleQtyUnit
        transp_rate_calc_rule_qty  TYPE c LENGTH 3,
        "! TranspRateCalcRuleQuantity
        transp_rate_calc_rule_quan TYPE p LENGTH 16 DECIMALS 14,
        "! TranspChrgDataSourceQuantity
        transp_chrg_data_source_qu TYPE p LENGTH 16 DECIMALS 14,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_frt_ord_chrg_calc_rule_typ,
      "! <p class="shorttext synchronized">List of FrtOrdChrgCalcRule_Type</p>
      tyt_frt_ord_chrg_calc_rule_typ TYPE STANDARD TABLE OF tys_frt_ord_chrg_calc_rule_typ WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FrtOrdChrgElement_Type</p>
      BEGIN OF tys_frt_ord_chrg_element_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_15,
        "! <em>Key property</em> TranspChargeItemElementUUID
        transp_charge_item_element TYPE sysuuid_x16,
        "! TranspChargeItemUUID
        transp_charge_item_uuid    TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! TransportationRateUUID
        transportation_rate_uuid   TYPE sysuuid_x16,
        "! TranspCalculationSheetItem
        transp_calculation_sheet_i TYPE c LENGTH 6,
        "! TranspChargeType
        transp_charge_type         TYPE c LENGTH 15,
        "! TranspCalcResolutionBase
        transp_calc_resolution_bas TYPE c LENGTH 20,
        "! TranspCalculationDateType
        transp_calculation_date_ty TYPE c LENGTH 10,
        "! TranspChargeCalculationDateTme
        transp_charge_calculation  TYPE timestamp,
        "! TranspChargeCalculationCrcy
        transp_charge_calculatio_2 TYPE c LENGTH 3,
        "! TranspChargeCalcAmtInCalcCrcy
        transp_charge_calc_amt_in  TYPE decfloat34,
        "! TransportationRateCurrency
        transportation_rate_curren TYPE c LENGTH 3,
        "! TranspRateAmountInRateCrcy
        transp_rate_amount_in_rate TYPE decfloat34,
        "! TransportationRatePctUnit
        transportation_rate_pct_un TYPE c LENGTH 3,
        "! TransportationRateAmountPct
        transportation_rate_amount TYPE p LENGTH 16 DECIMALS 2,
        "! TranspRateAmtIsManuallyChanged
        transp_rate_amt_is_manuall TYPE abap_bool,
        "! TranspChrgLineNumber
        transp_chrg_line_number    TYPE c LENGTH 6,
        "! TranspChrgRefFromLineNumber
        transp_chrg_ref_from_line  TYPE c LENGTH 6,
        "! TranspChrgRefToLineNumber
        transp_chrg_ref_to_line_nu TYPE c LENGTH 6,
        "! TranspChargeDocumentCurrency
        transp_charge_document_cur TYPE c LENGTH 3,
        "! TranspChrgAmountInDocCurrency
        transp_chrg_amount_in_doc  TYPE decfloat34,
        "! TranspChargeLocalCurrency
        transp_charge_local_curren TYPE c LENGTH 3,
        "! TranspChrgAmountInLoclCurrency
        transp_chrg_amount_in_locl TYPE decfloat34,
        "! TranspIndexRateTableUUID
        transp_index_rate_table_uu TYPE sysuuid_x16,
        "! TransportationRate
        transportation_rate        TYPE c LENGTH 20,
        "! TranspChargeIsMandatory
        transp_charge_is_mandatory TYPE abap_bool,
        "! TranspDimnWeightProfile
        transp_dimn_weight_profile TYPE c LENGTH 10,
        "! TranspCalculationMethodType
        transp_calculation_method  TYPE c LENGTH 1,
        "! TranspCalculationMethodName
        transp_calculation_metho_2 TYPE c LENGTH 20,
        "! TranspChargeCalcStatus
        transp_charge_calc_status  TYPE c LENGTH 2,
        "! TranspChargePostingStatus
        transp_charge_posting_stat TYPE c LENGTH 2,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_frt_ord_chrg_element_type,
      "! <p class="shorttext synchronized">List of FrtOrdChrgElement_Type</p>
      tyt_frt_ord_chrg_element_type TYPE STANDARD TABLE OF tys_frt_ord_chrg_element_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FrtOrdChrgElmntExchRate_Type</p>
      BEGIN OF tys_frt_ord_chrg_elmnt_exch__2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_5,
        "! <em>Key property</em> TranspChrgExchangeRateUUID
        transp_chrg_exchange_rate  TYPE sysuuid_x16,
        "! TranspChargeItemElementUUID
        transp_charge_item_element TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! SourceCurrency
        source_currency            TYPE c LENGTH 3,
        "! TargetCurrency
        target_currency            TYPE c LENGTH 3,
        "! TranspChrgExchangeRate
        transp_chrg_exchange_rat_2 TYPE p LENGTH 15 DECIMALS 14,
        "! TranspChrgExchangeRateType
        transp_chrg_exchange_rat_3 TYPE c LENGTH 4,
        "! ExchangeRateDate
        exchange_rate_date         TYPE datn,
        "! TranspExchRateDateIsMnllyChgd
        transp_exch_rate_date_is_m TYPE abap_bool,
        "! TranspExchRateIsManuallyChgd
        transp_exch_rate_is_manual TYPE abap_bool,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_frt_ord_chrg_elmnt_exch__2,
      "! <p class="shorttext synchronized">List of FrtOrdChrgElmntExchRate_Type</p>
      tyt_frt_ord_chrg_elmnt_exch__2 TYPE STANDARD TABLE OF tys_frt_ord_chrg_elmnt_exch__2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FrtOrdChrgItmExchRate_Type</p>
      BEGIN OF tys_frt_ord_chrg_itm_exch_ra_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_14,
        "! <em>Key property</em> TranspChrgExchangeRateUUID
        transp_chrg_exchange_rate  TYPE sysuuid_x16,
        "! TranspChargeItemUUID
        transp_charge_item_uuid    TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! SourceCurrency
        source_currency            TYPE c LENGTH 3,
        "! TargetCurrency
        target_currency            TYPE c LENGTH 3,
        "! TranspChrgExchangeRate
        transp_chrg_exchange_rat_2 TYPE p LENGTH 15 DECIMALS 14,
        "! TranspChrgExchangeRateType
        transp_chrg_exchange_rat_3 TYPE c LENGTH 4,
        "! ExchangeRateDate
        exchange_rate_date         TYPE datn,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_frt_ord_chrg_itm_exch_ra_2,
      "! <p class="shorttext synchronized">List of FrtOrdChrgItmExchRate_Type</p>
      tyt_frt_ord_chrg_itm_exch_ra_2 TYPE STANDARD TABLE OF tys_frt_ord_chrg_itm_exch_ra_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FrtOrdItmMainBPAddrAddlRprstn_Type</p>
      BEGIN OF tys_frt_ord_itm_main_bpaddr__2,
        "! <em>Key property</em> TransportationOrderItemUUID
        transportation_order_item  TYPE sysuuid_x16,
        "! <em>Key property</em> TranspOrdBizPartnerFunction
        transp_ord_biz_partner_fun TYPE c LENGTH 2,
        "! <em>Key property</em> AddressRepresentationCode
        address_representation_cod TYPE c LENGTH 1,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! AddressID
        address_id                 TYPE c LENGTH 10,
        "! AddresseeFullName
        addressee_full_name        TYPE c LENGTH 80,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! Country
        country                    TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_frt_ord_itm_main_bpaddr__2,
      "! <p class="shorttext synchronized">List of FrtOrdItmMainBPAddrAddlRprstn_Type</p>
      tyt_frt_ord_itm_main_bpaddr__2 TYPE STANDARD TABLE OF tys_frt_ord_itm_main_bpaddr__2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FrtOrdItmMainBPAddrDfltRprstn_Type</p>
      BEGIN OF tys_frt_ord_itm_main_bpaddr__3,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_13,
        "! <em>Key property</em> TransportationOrderItemUUID
        transportation_order_item  TYPE sysuuid_x16,
        "! <em>Key property</em> TranspOrdBizPartnerFunction
        transp_ord_biz_partner_fun TYPE c LENGTH 2,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! AddressID
        address_id                 TYPE c LENGTH 10,
        "! AddresseeFullName
        addressee_full_name        TYPE c LENGTH 80,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! Country
        country                    TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! EmailAddress
        email_address              TYPE c LENGTH 241,
        "! InternationalPhoneNumber
        international_phone_number TYPE c LENGTH 30,
        "! InternationalMobilePhoneNumber
        international_mobile_phone TYPE c LENGTH 30,
        "! InternationalFaxNumber
        international_fax_number   TYPE c LENGTH 30,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_frt_ord_itm_main_bpaddr__3,
      "! <p class="shorttext synchronized">List of FrtOrdItmMainBPAddrDfltRprstn_Type</p>
      tyt_frt_ord_itm_main_bpaddr__3 TYPE STANDARD TABLE OF tys_frt_ord_itm_main_bpaddr__3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FrtOrdMainBPAddrAddlRprstn_Type</p>
      BEGIN OF tys_frt_ord_main_bpaddr_addl_2,
        "! <em>Key property</em> TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! <em>Key property</em> TranspOrdBizPartnerFunction
        transp_ord_biz_partner_fun TYPE c LENGTH 2,
        "! <em>Key property</em> AddressRepresentationCode
        address_representation_cod TYPE c LENGTH 1,
        "! AddressID
        address_id                 TYPE c LENGTH 10,
        "! AddresseeFullName
        addressee_full_name        TYPE c LENGTH 80,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! Country
        country                    TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_frt_ord_main_bpaddr_addl_2,
      "! <p class="shorttext synchronized">List of FrtOrdMainBPAddrAddlRprstn_Type</p>
      tyt_frt_ord_main_bpaddr_addl_2 TYPE STANDARD TABLE OF tys_frt_ord_main_bpaddr_addl_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FrtOrdMainBPAddrDfltRprstn_Type</p>
      BEGIN OF tys_frt_ord_main_bpaddr_dflt_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_9,
        "! <em>Key property</em> TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! <em>Key property</em> TranspOrdBizPartnerFunction
        transp_ord_biz_partner_fun TYPE c LENGTH 2,
        "! AddressID
        address_id                 TYPE c LENGTH 10,
        "! AddresseeFullName
        addressee_full_name        TYPE c LENGTH 80,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! Country
        country                    TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! EmailAddress
        email_address              TYPE c LENGTH 241,
        "! InternationalPhoneNumber
        international_phone_number TYPE c LENGTH 30,
        "! InternationalMobilePhoneNumber
        international_mobile_phone TYPE c LENGTH 30,
        "! InternationalFaxNumber
        international_fax_number   TYPE c LENGTH 30,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_frt_ord_main_bpaddr_dflt_2,
      "! <p class="shorttext synchronized">List of FrtOrdMainBPAddrDfltRprstn_Type</p>
      tyt_frt_ord_main_bpaddr_dflt_2 TYPE STANDARD TABLE OF tys_frt_ord_main_bpaddr_dflt_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FrtOrdStgeBPAddrAddlRprstn_Type</p>
      BEGIN OF tys_frt_ord_stge_bpaddr_addl_2,
        "! <em>Key property</em> TransportationOrderStageUUID
        transportation_order_stage TYPE sysuuid_x16,
        "! <em>Key property</em> TranspOrdBizPartnerFunction
        transp_ord_biz_partner_fun TYPE c LENGTH 2,
        "! <em>Key property</em> AddressRepresentationCode
        address_representation_cod TYPE c LENGTH 1,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! AddressID
        address_id                 TYPE c LENGTH 10,
        "! AddresseeFullName
        addressee_full_name        TYPE c LENGTH 80,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! Country
        country                    TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_frt_ord_stge_bpaddr_addl_2,
      "! <p class="shorttext synchronized">List of FrtOrdStgeBPAddrAddlRprstn_Type</p>
      tyt_frt_ord_stge_bpaddr_addl_2 TYPE STANDARD TABLE OF tys_frt_ord_stge_bpaddr_addl_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FrtOrdStgeBPAddrDfltRprstn_Type</p>
      BEGIN OF tys_frt_ord_stge_bpaddr_dflt_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_16,
        "! <em>Key property</em> TransportationOrderStageUUID
        transportation_order_stage TYPE sysuuid_x16,
        "! <em>Key property</em> TranspOrdBizPartnerFunction
        transp_ord_biz_partner_fun TYPE c LENGTH 2,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! AddressID
        address_id                 TYPE c LENGTH 10,
        "! AddresseeFullName
        addressee_full_name        TYPE c LENGTH 80,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! Country
        country                    TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! EmailAddress
        email_address              TYPE c LENGTH 241,
        "! InternationalPhoneNumber
        international_phone_number TYPE c LENGTH 30,
        "! InternationalMobilePhoneNumber
        international_mobile_phone TYPE c LENGTH 30,
        "! InternationalFaxNumber
        international_fax_number   TYPE c LENGTH 30,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_frt_ord_stge_bpaddr_dflt_2,
      "! <p class="shorttext synchronized">List of FrtOrdStgeBPAddrDfltRprstn_Type</p>
      tyt_frt_ord_stge_bpaddr_dflt_2 TYPE STANDARD TABLE OF tys_frt_ord_stge_bpaddr_dflt_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FrtOrdStopLocAddrAddlRprstn_Type</p>
      BEGIN OF tys_frt_ord_stop_loc_addr_ad_2,
        "! <em>Key property</em> TransportationOrderStopUUID
        transportation_order_stop  TYPE sysuuid_x16,
        "! <em>Key property</em> AddressRepresentationCode
        address_representation_cod TYPE c LENGTH 1,
        "! TransportationOrderUUID
        transportation_order_uuid  TYPE sysuuid_x16,
        "! AddressID
        address_id                 TYPE c LENGTH 10,
        "! AddresseeFullName
        addressee_full_name        TYPE c LENGTH 80,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! Country
        country                    TYPE c LENGTH 3,
        "! Region
        region                     TYPE c LENGTH 3,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_frt_ord_stop_loc_addr_ad_2,
      "! <p class="shorttext synchronized">List of FrtOrdStopLocAddrAddlRprstn_Type</p>
      tyt_frt_ord_stop_loc_addr_ad_2 TYPE STANDARD TABLE OF tys_frt_ord_stop_loc_addr_ad_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">FrtOrdStopLocAddrDfltRprstn_Type</p>
      BEGIN OF tys_frt_ord_stop_loc_addr_df_2,
        "! <em>Value Control Structure</em>
        value_controls            TYPE tys_value_controls_7,
        "! <em>Key property</em> TransportationOrderStopUUID
        transportation_order_stop TYPE sysuuid_x16,
        "! TransportationOrderUUID
        transportation_order_uuid TYPE sysuuid_x16,
        "! AddressID
        address_id                TYPE c LENGTH 10,
        "! AddresseeFullName
        addressee_full_name       TYPE c LENGTH 80,
        "! CityName
        city_name                 TYPE c LENGTH 40,
        "! PostalCode
        postal_code               TYPE c LENGTH 10,
        "! StreetName
        street_name               TYPE c LENGTH 60,
        "! HouseNumber
        house_number              TYPE c LENGTH 10,
        "! Country
        country                   TYPE c LENGTH 3,
        "! Region
        region                    TYPE c LENGTH 3,
        "! odata.etag
        etag                      TYPE string,
      END OF tys_frt_ord_stop_loc_addr_df_2,
      "! <p class="shorttext synchronized">List of FrtOrdStopLocAddrDfltRprstn_Type</p>
      tyt_frt_ord_stop_loc_addr_df_2 TYPE STANDARD TABLE OF tys_frt_ord_stop_loc_addr_df_2 WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! FreightOrder
        "! <br/> Collection of type 'FreightOrder_Type'
        freight_order              TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FREIGHT_ORDER',
        "! FreightOrderBusinessPartner
        "! <br/> Collection of type 'FreightOrderBusinessPartner_Type'
        freight_order_business_par TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FREIGHT_ORDER_BUSINESS_PAR',
        "! FreightOrderCharge
        "! <br/> Collection of type 'FreightOrderCharge_Type'
        freight_order_charge       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FREIGHT_ORDER_CHARGE',
        "! FreightOrderChargeItem
        "! <br/> Collection of type 'FreightOrderChargeItem_Type'
        freight_order_charge_item  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FREIGHT_ORDER_CHARGE_ITEM',
        "! FreightOrderDocumentReference
        "! <br/> Collection of type 'FreightOrderDocRef_Type'
        freight_order_document_ref TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FREIGHT_ORDER_DOCUMENT_REF',
        "! FreightOrderEvent
        "! <br/> Collection of type 'FreightOrderEvent_Type'
        freight_order_event        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FREIGHT_ORDER_EVENT',
        "! FreightOrderItem
        "! <br/> Collection of type 'FreightOrderItem_Type'
        freight_order_item         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FREIGHT_ORDER_ITEM',
        "! FreightOrderItemCommodityCode
        "! <br/> Collection of type 'FreightOrderItemCommodityCode_Type'
        freight_order_item_commodi TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FREIGHT_ORDER_ITEM_COMMODI',
        "! FreightOrderItemDocRef
        "! <br/> Collection of type 'FreightOrderItemDocRef_Type'
        freight_order_item_doc_ref TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FREIGHT_ORDER_ITEM_DOC_REF',
        "! FreightOrderItemSeal
        "! <br/> Collection of type 'FreightOrderItemSeal_Type'
        freight_order_item_seal    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FREIGHT_ORDER_ITEM_SEAL',
        "! FreightOrderStage
        "! <br/> Collection of type 'FreightOrderStage_Type'
        freight_order_stage        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FREIGHT_ORDER_STAGE',
        "! FreightOrderStop
        "! <br/> Collection of type 'FreightOrderStop_Type'
        freight_order_stop         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FREIGHT_ORDER_STOP',
        "! FrtOrdBPAddrAddlRprstn
        "! <br/> Collection of type 'FrtOrdBPAddrAddlRprstn_Type'
        frt_ord_bpaddr_addl_rprstn TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FRT_ORD_BPADDR_ADDL_RPRSTN',
        "! FrtOrdBPAddrDfltRprstn
        "! <br/> Collection of type 'FrtOrdBPAddrDfltRprstn_Type'
        frt_ord_bpaddr_dflt_rprstn TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FRT_ORD_BPADDR_DFLT_RPRSTN',
        "! FrtOrdChrgCalcBase
        "! <br/> Collection of type 'FrtOrdChrgCalcBase_Type'
        frt_ord_chrg_calc_base     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FRT_ORD_CHRG_CALC_BASE',
        "! FrtOrdChrgCalcRule
        "! <br/> Collection of type 'FrtOrdChrgCalcRule_Type'
        frt_ord_chrg_calc_rule     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FRT_ORD_CHRG_CALC_RULE',
        "! FrtOrdChrgElement
        "! <br/> Collection of type 'FrtOrdChrgElement_Type'
        frt_ord_chrg_element       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FRT_ORD_CHRG_ELEMENT',
        "! FrtOrdChrgElmntExchRate
        "! <br/> Collection of type 'FrtOrdChrgElmntExchRate_Type'
        frt_ord_chrg_elmnt_exch_ra TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FRT_ORD_CHRG_ELMNT_EXCH_RA',
        "! FrtOrdChrgItmExchRate
        "! <br/> Collection of type 'FrtOrdChrgItmExchRate_Type'
        frt_ord_chrg_itm_exch_rate TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FRT_ORD_CHRG_ITM_EXCH_RATE',
        "! FrtOrdItmMainBPAddrAddlRprstn
        "! <br/> Collection of type 'FrtOrdItmMainBPAddrAddlRprstn_Type'
        frt_ord_itm_main_bpaddr_ad TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FRT_ORD_ITM_MAIN_BPADDR_AD',
        "! FrtOrdItmMainBPAddrDfltRprstn
        "! <br/> Collection of type 'FrtOrdItmMainBPAddrDfltRprstn_Type'
        frt_ord_itm_main_bpaddr_df TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FRT_ORD_ITM_MAIN_BPADDR_DF',
        "! FrtOrdMainBPAddrAddlRprstn
        "! <br/> Collection of type 'FrtOrdMainBPAddrAddlRprstn_Type'
        frt_ord_main_bpaddr_addl_r TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FRT_ORD_MAIN_BPADDR_ADDL_R',
        "! FrtOrdMainBPAddrDfltRprstn
        "! <br/> Collection of type 'FrtOrdMainBPAddrDfltRprstn_Type'
        frt_ord_main_bpaddr_dflt_r TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FRT_ORD_MAIN_BPADDR_DFLT_R',
        "! FrtOrdStgeBPAddrAddlRprstn
        "! <br/> Collection of type 'FrtOrdStgeBPAddrAddlRprstn_Type'
        frt_ord_stge_bpaddr_addl_r TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FRT_ORD_STGE_BPADDR_ADDL_R',
        "! FrtOrdStgeBPAddrDfltRprstn
        "! <br/> Collection of type 'FrtOrdStgeBPAddrDfltRprstn_Type'
        frt_ord_stge_bpaddr_dflt_r TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FRT_ORD_STGE_BPADDR_DFLT_R',
        "! FrtOrdStopLocAddrAddlRprstn
        "! <br/> Collection of type 'FrtOrdStopLocAddrAddlRprstn_Type'
        frt_ord_stop_loc_addr_addl TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FRT_ORD_STOP_LOC_ADDR_ADDL',
        "! FrtOrdStopLocAddrDfltRprstn
        "! <br/> Collection of type 'FrtOrdStopLocAddrDfltRprstn_Type'
        frt_ord_stop_loc_addr_dflt TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'FRT_ORD_STOP_LOC_ADDR_DFLT',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound actions</p>
      BEGIN OF gcs_bound_action,
        "! AssignFreightUnit
        "! <em>bound against entity type</em> FreightOrder_Type
        "! <br/> See structure type {@link ..tys_parameters_1} for the parameters
        assign_freight_unit        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'ASSIGN_FREIGHT_UNIT',
        "! CalculateTransportationCharges
        "! <em>bound against entity type</em> FreightOrder_Type
        calculate_transportation_c TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CALCULATE_TRANSPORTATION_C',
        "! CancelFreightOrder
        "! <em>bound against entity type</em> FreightOrder_Type
        cancel_freight_order       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CANCEL_FREIGHT_ORDER',
        "! CreateFreightOrder
        "! <em>bound against collections of entity type</em> FreightOrder_Type
        "! <br/> See structure type {@link ..tys_parameters_2} for the parameters
        create_freight_order       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CREATE_FREIGHT_ORDER',
        "! ReportEvent
        "! <em>bound against entity type</em> FreightOrder_Type
        "! <br/> See structure type {@link ..tys_parameters_3} for the parameters
        report_event               TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'REPORT_EVENT',
        "! UnassignFreightUnit
        "! <em>bound against entity type</em> FreightOrder_Type
        "! <br/> See structure type {@link ..tys_parameters_4} for the parameters
        unassign_freight_unit      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'UNASSIGN_FREIGHT_UNIT',
      END OF gcs_bound_action.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
        "! <p class="shorttext synchronized">Internal names for D_FreightUnitAssignParameter</p>
        "! See also structure type {@link ..tys_d_freight_unit_assign_para}
        BEGIN OF d_freight_unit_assign_para,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF d_freight_unit_assign_para,
        "! <p class="shorttext synchronized">Internal names for D_FreightUnitUnassignParameter</p>
        "! See also structure type {@link ..tys_d_freight_unit_unassign_pa}
        BEGIN OF d_freight_unit_unassign_pa,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF d_freight_unit_unassign_pa,
        "! <p class="shorttext synchronized">Internal names for SAP__Message</p>
        "! See also structure type {@link ..tys_sap_message}
        BEGIN OF sap_message,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_message,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for FreightOrderBusinessPartner_Type</p>
        "! See also structure type {@link ..tys_freight_order_business_p_2}
        BEGIN OF freight_order_business_p_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FrtOrdBPAddrDfltRprstn
            frt_ord_bpaddr_dflt_rprstn TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_BPADDR_DFLT_RPRSTN',
          END OF navigation,
        END OF freight_order_business_p_2,
        "! <p class="shorttext synchronized">Internal names for FreightOrderChargeItem_Type</p>
        "! See also structure type {@link ..tys_freight_order_charge_ite_2}
        BEGIN OF freight_order_charge_ite_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FreightOrderCharge
            freight_order_charge       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_CHARGE',
            "! _FrtOrdChrgElement
            frt_ord_chrg_element       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_CHRG_ELEMENT',
            "! _FrtOrdChrgItmExchRate
            frt_ord_chrg_itm_exch_rate TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_CHRG_ITM_EXCH_RATE',
          END OF navigation,
        END OF freight_order_charge_ite_2,
        "! <p class="shorttext synchronized">Internal names for FreightOrderCharge_Type</p>
        "! See also structure type {@link ..tys_freight_order_charge_type}
        BEGIN OF freight_order_charge_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order             TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FreightOrderChargeItem
            freight_order_charge_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_CHARGE_ITEM',
          END OF navigation,
        END OF freight_order_charge_type,
        "! <p class="shorttext synchronized">Internal names for FreightOrderDocRef_Type</p>
        "! See also structure type {@link ..tys_freight_order_doc_ref_type}
        BEGIN OF freight_order_doc_ref_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
          END OF navigation,
        END OF freight_order_doc_ref_type,
        "! <p class="shorttext synchronized">Internal names for FreightOrderEvent_Type</p>
        "! See also structure type {@link ..tys_freight_order_event_type}
        BEGIN OF freight_order_event_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
          END OF navigation,
        END OF freight_order_event_type,
        "! <p class="shorttext synchronized">Internal names for FreightOrderItemCommodityCode_Type</p>
        "! See also structure type {@link ..tys_freight_order_item_commo_2}
        BEGIN OF freight_order_item_commo_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FreightOrderItem
            freight_order_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_ITEM',
          END OF navigation,
        END OF freight_order_item_commo_2,
        "! <p class="shorttext synchronized">Internal names for FreightOrderItemDocRef_Type</p>
        "! See also structure type {@link ..tys_freight_order_item_doc_r_2}
        BEGIN OF freight_order_item_doc_r_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FreightOrderItem
            freight_order_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_ITEM',
          END OF navigation,
        END OF freight_order_item_doc_r_2,
        "! <p class="shorttext synchronized">Internal names for FreightOrderItemSeal_Type</p>
        "! See also structure type {@link ..tys_freight_order_item_seal_ty}
        BEGIN OF freight_order_item_seal_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FreightOrderItem
            freight_order_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_ITEM',
          END OF navigation,
        END OF freight_order_item_seal_ty,
        "! <p class="shorttext synchronized">Internal names for FreightOrderItem_Type</p>
        "! See also structure type {@link ..tys_freight_order_item_type}
        BEGIN OF freight_order_item_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _ConsigneeAddrDfltRprstn
            consignee_addr_dflt_rprstn TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CONSIGNEE_ADDR_DFLT_RPRSTN',
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FreightOrderItemCommodityCode
            freight_order_item_commodi TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_ITEM_COMMODI',
            "! _FreightOrderItemDocRef
            freight_order_item_doc_ref TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_ITEM_DOC_REF',
            "! _FreightOrderItemSeal
            freight_order_item_seal    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_ITEM_SEAL',
            "! _FrtOrdItmMainBPAddrDfltRprstn
            frt_ord_itm_main_bpaddr_df TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_ITM_MAIN_BPADDR_DF',
            "! _ShipperAddrDfltRprstn
            shipper_addr_dflt_rprstn   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'SHIPPER_ADDR_DFLT_RPRSTN',
          END OF navigation,
        END OF freight_order_item_type,
        "! <p class="shorttext synchronized">Internal names for FreightOrderStage_Type</p>
        "! See also structure type {@link ..tys_freight_order_stage_type}
        BEGIN OF freight_order_stage_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _ExectgCarrierAddrDfltRprstn
            exectg_carrier_addr_dflt_r TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'EXECTG_CARRIER_ADDR_DFLT_R',
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FreightOrderStop
            freight_order_stop         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_STOP',
            "! _FrtOrdStageBPAddrDfltRprstn
            frt_ord_stage_bpaddr_dflt  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_STAGE_BPADDR_DFLT',
            "! _InvcgCarrierAddrDfltRprstn
            invcg_carrier_addr_dflt_rp TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'INVCG_CARRIER_ADDR_DFLT_RP',
          END OF navigation,
        END OF freight_order_stage_type,
        "! <p class="shorttext synchronized">Internal names for FreightOrderStop_Type</p>
        "! See also structure type {@link ..tys_freight_order_stop_type}
        BEGIN OF freight_order_stop_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FreightOrderStage
            freight_order_stage        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_STAGE',
            "! _FrtOrdStopLocAddrDfltRprstn
            frt_ord_stop_loc_addr_dflt TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_STOP_LOC_ADDR_DFLT',
          END OF navigation,
        END OF freight_order_stop_type,
        "! <p class="shorttext synchronized">Internal names for FreightOrder_Type</p>
        "! See also structure type {@link ..tys_freight_order_type}
        BEGIN OF freight_order_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _CarrierAddrDfltRprstn
            carrier_addr_dflt_rprstn   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CARRIER_ADDR_DFLT_RPRSTN',
            "! _ConsigneeAddrDfltRprstn
            consignee_addr_dflt_rprstn TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CONSIGNEE_ADDR_DFLT_RPRSTN',
            "! _ExectgCarrierAddrDfltRprstn
            exectg_carrier_addr_dflt_r TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'EXECTG_CARRIER_ADDR_DFLT_R',
            "! _FreightOrderBusinessPartner
            freight_order_business_par TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_BUSINESS_PAR',
            "! _FreightOrderCharge
            freight_order_charge       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_CHARGE',
            "! _FreightOrderDocumentReference
            freight_order_document_ref TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_DOCUMENT_REF',
            "! _FreightOrderEvent
            freight_order_event        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_EVENT',
            "! _FreightOrderItem
            freight_order_item         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_ITEM',
            "! _FreightOrderStop
            freight_order_stop         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_STOP',
            "! _FrtOrdMainBPAddrDfltRprstn
            frt_ord_main_bpaddr_dflt_r TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_MAIN_BPADDR_DFLT_R',
            "! _ShipperAddrDfltRprstn
            shipper_addr_dflt_rprstn   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'SHIPPER_ADDR_DFLT_RPRSTN',
          END OF navigation,
        END OF freight_order_type,
        "! <p class="shorttext synchronized">Internal names for FrtOrdBPAddrAddlRprstn_Type</p>
        "! See also structure type {@link ..tys_frt_ord_bpaddr_addl_rprs_2}
        BEGIN OF frt_ord_bpaddr_addl_rprs_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FrtOrdBPAddrDfltRprstn
            frt_ord_bpaddr_dflt_rprstn TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_BPADDR_DFLT_RPRSTN',
          END OF navigation,
        END OF frt_ord_bpaddr_addl_rprs_2,
        "! <p class="shorttext synchronized">Internal names for FrtOrdBPAddrDfltRprstn_Type</p>
        "! See also structure type {@link ..tys_frt_ord_bpaddr_dflt_rprs_2}
        BEGIN OF frt_ord_bpaddr_dflt_rprs_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FreightOrderBusinessPartner
            freight_order_business_par TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_BUSINESS_PAR',
            "! _FrtOrdBPAddrAddlRprstn
            frt_ord_bpaddr_addl_rprstn TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_BPADDR_ADDL_RPRSTN',
          END OF navigation,
        END OF frt_ord_bpaddr_dflt_rprs_2,
        "! <p class="shorttext synchronized">Internal names for FrtOrdChrgCalcBase_Type</p>
        "! See also structure type {@link ..tys_frt_ord_chrg_calc_base_typ}
        BEGIN OF frt_ord_chrg_calc_base_typ,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FrtOrdChrgElement
            frt_ord_chrg_element TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_CHRG_ELEMENT',
          END OF navigation,
        END OF frt_ord_chrg_calc_base_typ,
        "! <p class="shorttext synchronized">Internal names for FrtOrdChrgCalcRule_Type</p>
        "! See also structure type {@link ..tys_frt_ord_chrg_calc_rule_typ}
        BEGIN OF frt_ord_chrg_calc_rule_typ,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FrtOrdChrgElement
            frt_ord_chrg_element TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_CHRG_ELEMENT',
          END OF navigation,
        END OF frt_ord_chrg_calc_rule_typ,
        "! <p class="shorttext synchronized">Internal names for FrtOrdChrgElement_Type</p>
        "! See also structure type {@link ..tys_frt_ord_chrg_element_type}
        BEGIN OF frt_ord_chrg_element_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FreightOrderChargeItem
            freight_order_charge_item  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_CHARGE_ITEM',
            "! _FrtOrdChrgCalcBase
            frt_ord_chrg_calc_base     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_CHRG_CALC_BASE',
            "! _FrtOrdChrgCalcRule
            frt_ord_chrg_calc_rule     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_CHRG_CALC_RULE',
            "! _FrtOrdChrgElmntExchRate
            frt_ord_chrg_elmnt_exch_ra TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_CHRG_ELMNT_EXCH_RA',
          END OF navigation,
        END OF frt_ord_chrg_element_type,
        "! <p class="shorttext synchronized">Internal names for FrtOrdChrgElmntExchRate_Type</p>
        "! See also structure type {@link ..tys_frt_ord_chrg_elmnt_exch__2}
        BEGIN OF frt_ord_chrg_elmnt_exch__2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FrtOrdChrgElement
            frt_ord_chrg_element TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_CHRG_ELEMENT',
          END OF navigation,
        END OF frt_ord_chrg_elmnt_exch__2,
        "! <p class="shorttext synchronized">Internal names for FrtOrdChrgItmExchRate_Type</p>
        "! See also structure type {@link ..tys_frt_ord_chrg_itm_exch_ra_2}
        BEGIN OF frt_ord_chrg_itm_exch_ra_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order             TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FreightOrderChargeItem
            freight_order_charge_item TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_CHARGE_ITEM',
          END OF navigation,
        END OF frt_ord_chrg_itm_exch_ra_2,
        "! <p class="shorttext synchronized">Internal names for FrtOrdItmMainBPAddrAddlRprstn_Type</p>
        "! See also structure type {@link ..tys_frt_ord_itm_main_bpaddr__2}
        BEGIN OF frt_ord_itm_main_bpaddr__2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FrtOrdItmMainBPAddrDfltRprstn
            frt_ord_itm_main_bpaddr_df TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_ITM_MAIN_BPADDR_DF',
          END OF navigation,
        END OF frt_ord_itm_main_bpaddr__2,
        "! <p class="shorttext synchronized">Internal names for FrtOrdItmMainBPAddrDfltRprstn_Type</p>
        "! See also structure type {@link ..tys_frt_ord_itm_main_bpaddr__3}
        BEGIN OF frt_ord_itm_main_bpaddr__3,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FreightOrderItem
            freight_order_item         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_ITEM',
            "! _FrtOrdItmMainBPAddrAddlRprstn
            frt_ord_itm_main_bpaddr_ad TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_ITM_MAIN_BPADDR_AD',
          END OF navigation,
        END OF frt_ord_itm_main_bpaddr__3,
        "! <p class="shorttext synchronized">Internal names for FrtOrdMainBPAddrAddlRprstn_Type</p>
        "! See also structure type {@link ..tys_frt_ord_main_bpaddr_addl_2}
        BEGIN OF frt_ord_main_bpaddr_addl_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FrtOrdMainBPAddrDfltRprstn
            frt_ord_main_bpaddr_dflt_r TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_MAIN_BPADDR_DFLT_R',
          END OF navigation,
        END OF frt_ord_main_bpaddr_addl_2,
        "! <p class="shorttext synchronized">Internal names for FrtOrdMainBPAddrDfltRprstn_Type</p>
        "! See also structure type {@link ..tys_frt_ord_main_bpaddr_dflt_2}
        BEGIN OF frt_ord_main_bpaddr_dflt_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FrtOrdMainBPAddrAddlRprstn
            frt_ord_main_bpaddr_addl_r TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_MAIN_BPADDR_ADDL_R',
          END OF navigation,
        END OF frt_ord_main_bpaddr_dflt_2,
        "! <p class="shorttext synchronized">Internal names for FrtOrdStgeBPAddrAddlRprstn_Type</p>
        "! See also structure type {@link ..tys_frt_ord_stge_bpaddr_addl_2}
        BEGIN OF frt_ord_stge_bpaddr_addl_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FrtOrdStgeBPAddrDfltRprstn
            frt_ord_stge_bpaddr_dflt_r TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_STGE_BPADDR_DFLT_R',
          END OF navigation,
        END OF frt_ord_stge_bpaddr_addl_2,
        "! <p class="shorttext synchronized">Internal names for FrtOrdStgeBPAddrDfltRprstn_Type</p>
        "! See also structure type {@link ..tys_frt_ord_stge_bpaddr_dflt_2}
        BEGIN OF frt_ord_stge_bpaddr_dflt_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FreightOrderStage
            freight_order_stage        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_STAGE',
            "! _FrtOrdStgeBPAddrAddlRprstn
            frt_ord_stge_bpaddr_addl_r TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_STGE_BPADDR_ADDL_R',
          END OF navigation,
        END OF frt_ord_stge_bpaddr_dflt_2,
        "! <p class="shorttext synchronized">Internal names for FrtOrdStopLocAddrAddlRprstn_Type</p>
        "! See also structure type {@link ..tys_frt_ord_stop_loc_addr_ad_2}
        BEGIN OF frt_ord_stop_loc_addr_ad_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FrtOrdStopLocAddrDfltRprstn
            frt_ord_stop_loc_addr_dflt TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_STOP_LOC_ADDR_DFLT',
          END OF navigation,
        END OF frt_ord_stop_loc_addr_ad_2,
        "! <p class="shorttext synchronized">Internal names for FrtOrdStopLocAddrDfltRprstn_Type</p>
        "! See also structure type {@link ..tys_frt_ord_stop_loc_addr_df_2}
        BEGIN OF frt_ord_stop_loc_addr_df_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _FreightOrder
            freight_order              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER',
            "! _FreightOrderStop
            freight_order_stop         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FREIGHT_ORDER_STOP',
            "! _FrtOrdStopLocAddrAddlRprstn
            frt_ord_stop_loc_addr_addl TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FRT_ORD_STOP_LOC_ADDR_ADDL',
          END OF navigation,
        END OF frt_ord_stop_loc_addr_df_2,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define D_FreightUnitAssignParameter</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_d_freight_unit_assign_para RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define D_FreightUnitUnassignParameter</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_d_freight_unit_unassign_pa RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__Message</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_message RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FreightOrderBusinessPartner_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_freight_order_business_p_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FreightOrderChargeItem_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_freight_order_charge_ite_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FreightOrderCharge_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_freight_order_charge_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FreightOrderDocRef_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_freight_order_doc_ref_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FreightOrderEvent_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_freight_order_event_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FreightOrderItemCommodityCode_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_freight_order_item_commo_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FreightOrderItemDocRef_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_freight_order_item_doc_r_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FreightOrderItemSeal_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_freight_order_item_seal_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FreightOrderItem_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_freight_order_item_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FreightOrderStage_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_freight_order_stage_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FreightOrderStop_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_freight_order_stop_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FreightOrder_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_freight_order_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FrtOrdBPAddrAddlRprstn_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_frt_ord_bpaddr_addl_rprs_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FrtOrdBPAddrDfltRprstn_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_frt_ord_bpaddr_dflt_rprs_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FrtOrdChrgCalcBase_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_frt_ord_chrg_calc_base_typ RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FrtOrdChrgCalcRule_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_frt_ord_chrg_calc_rule_typ RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FrtOrdChrgElement_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_frt_ord_chrg_element_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FrtOrdChrgElmntExchRate_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_frt_ord_chrg_elmnt_exch__2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FrtOrdChrgItmExchRate_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_frt_ord_chrg_itm_exch_ra_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FrtOrdItmMainBPAddrAddlRprstn_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_frt_ord_itm_main_bpaddr__2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FrtOrdItmMainBPAddrDfltRprstn_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_frt_ord_itm_main_bpaddr__3 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FrtOrdMainBPAddrAddlRprstn_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_frt_ord_main_bpaddr_addl_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FrtOrdMainBPAddrDfltRprstn_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_frt_ord_main_bpaddr_dflt_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FrtOrdStgeBPAddrAddlRprstn_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_frt_ord_stge_bpaddr_addl_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FrtOrdStgeBPAddrDfltRprstn_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_frt_ord_stge_bpaddr_dflt_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FrtOrdStopLocAddrAddlRprstn_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_frt_ord_stop_loc_addr_ad_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define FrtOrdStopLocAddrDfltRprstn_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_frt_ord_stop_loc_addr_df_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define AssignFreightUnit</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_assign_freight_unit RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define CalculateTransportationCharges</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_calculate_transportation_c RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define CancelFreightOrder</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_cancel_freight_order RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define CreateFreightOrder</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_create_freight_order RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ReportEvent</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_report_event RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define UnassignFreightUnit</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_unassign_freight_unit RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define all primitive types</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS define_primitive_types RAISING /iwbep/cx_gateway.

ENDCLASS.



CLASS ZCL_FREIGHTORDER_CONSUMPTION IMPLEMENTATION.


  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'com.sap.gateway.srvd_a2x.api_freightorder.v0001' ).

    def_d_freight_unit_assign_para( ).
    def_d_freight_unit_unassign_pa( ).
    def_sap_message( ).
    def_freight_order_business_p_2( ).
    def_freight_order_charge_ite_2( ).
    def_freight_order_charge_type( ).
    def_freight_order_doc_ref_type( ).
    def_freight_order_event_type( ).
    def_freight_order_item_commo_2( ).
    def_freight_order_item_doc_r_2( ).
    def_freight_order_item_seal_ty( ).
    def_freight_order_item_type( ).
    def_freight_order_stage_type( ).
    def_freight_order_stop_type( ).
    def_freight_order_type( ).
    def_frt_ord_bpaddr_addl_rprs_2( ).
    def_frt_ord_bpaddr_dflt_rprs_2( ).
    def_frt_ord_chrg_calc_base_typ( ).
    def_frt_ord_chrg_calc_rule_typ( ).
    def_frt_ord_chrg_element_type( ).
    def_frt_ord_chrg_elmnt_exch__2( ).
    def_frt_ord_chrg_itm_exch_ra_2( ).
    def_frt_ord_itm_main_bpaddr__2( ).
    def_frt_ord_itm_main_bpaddr__3( ).
    def_frt_ord_main_bpaddr_addl_2( ).
    def_frt_ord_main_bpaddr_dflt_2( ).
    def_frt_ord_stge_bpaddr_addl_2( ).
    def_frt_ord_stge_bpaddr_dflt_2( ).
    def_frt_ord_stop_loc_addr_ad_2( ).
    def_frt_ord_stop_loc_addr_df_2( ).
    def_assign_freight_unit( ).
    def_calculate_transportation_c( ).
    def_cancel_freight_order( ).
    def_create_freight_order( ).
    def_report_event( ).
    def_unassign_freight_unit( ).
    define_primitive_types( ).

  ENDMETHOD.


  METHOD def_d_freight_unit_assign_para.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'D_FREIGHT_UNIT_ASSIGN_PARA'
                                    is_structure              = VALUE tys_d_freight_unit_assign_para( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'D_FreightUnitAssignParameter' ) ##NO_TEXT.
    lo_complex_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_primitive_property = lo_complex_type->get_primitive_property( 'FREIGHT_UNIT_UUID' ).
    lo_primitive_property->set_edm_name( 'FreightUnitUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_d_freight_unit_unassign_pa.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'D_FREIGHT_UNIT_UNASSIGN_PA'
                                    is_structure              = VALUE tys_d_freight_unit_unassign_pa( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'D_FreightUnitUnassignParameter' ) ##NO_TEXT.
    lo_complex_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_primitive_property = lo_complex_type->get_primitive_property( 'FREIGHT_UNIT_UUID' ).
    lo_primitive_property->set_edm_name( 'FreightUnitUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_sap_message.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'SAP_MESSAGE'
                                    is_structure              = VALUE tys_sap_message( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'SAP__Message' ) ##NO_TEXT.
    lo_complex_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_primitive_property = lo_complex_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MESSAGE' ).
    lo_primitive_property->set_edm_name( 'message' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TARGET' ).
    lo_primitive_property->set_edm_name( 'target' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ADDITIONAL_TARGETS' ).
    lo_primitive_property->set_edm_name( 'additionalTargets' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_collection( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TRANSITION' ).
    lo_primitive_property->set_edm_name( 'transition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'NUMERIC_SEVERITY' ).
    lo_primitive_property->set_edm_name( 'numericSeverity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Byte' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'LONGTEXT_URL' ).
    lo_primitive_property->set_edm_name( 'longtextUrl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_freight_order_business_p_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FREIGHT_ORDER_BUSINESS_P_2'
                                    is_structure              = VALUE tys_freight_order_business_p_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FreightOrderBusinessPartner_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FREIGHT_ORDER_BUSINESS_PAR' ).
    lo_entity_set->set_edm_name( 'FreightOrderBusinessPartner' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_BUS_P' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderBusPartUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_UUID' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'BusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_BIZ_PARTNER_FUN' ).
    lo_primitive_property->set_edm_name( 'TranspOrdBizPartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_BIZ_PARTNER_ADD' ).
    lo_primitive_property->set_edm_name( 'TranspOrdBizPartnerAddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_BPADDR_DFLT_RPRSTN' ).
    lo_navigation_property->set_edm_name( '_FrtOrdBPAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_BPADDR_DFLT_RPRS_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_freight_order_charge_ite_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FREIGHT_ORDER_CHARGE_ITE_2'
                                    is_structure              = VALUE tys_freight_order_charge_ite_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FreightOrderChargeItem_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FREIGHT_ORDER_CHARGE_ITEM' ).
    lo_entity_set->set_edm_name( 'FreightOrderChargeItem' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_ITEM_UUID' ).
    lo_primitive_property->set_edm_name( 'TranspChargeItemUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_CHARGES_OBJ' ).
    lo_primitive_property->set_edm_name( 'TransportationChargesObjUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_CALC_LEVEL_R' ).
    lo_primitive_property->set_edm_name( 'TranspChargeCalcLevelRefUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_AGREEMENT_U' ).
    lo_primitive_property->set_edm_name( 'TransportationAgreementUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_UUID' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_CALC_LEVEL' ).
    lo_primitive_property->set_edm_name( 'TranspChargeCalcLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_POSTING_STAT' ).
    lo_primitive_property->set_edm_name( 'TranspChargePostingStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_ITEM_DOC_CURRE' ).
    lo_primitive_property->set_edm_name( 'TranspChrgItemDocCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_ITM_TOT_AMT_IN' ).
    lo_primitive_property->set_edm_name( 'TranspChrgItmTotAmtInDocCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_ITEM_LOCL_CURR' ).
    lo_primitive_property->set_edm_name( 'TranspChrgItemLoclCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_ITM_TOT_AMT__2' ).
    lo_primitive_property->set_edm_name( 'TranspChrgItmTotAmtInLoclCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_ITEM_CALC_DA' ).
    lo_primitive_property->set_edm_name( 'TranspChargeItemCalcDateTme' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXCHANGE_RATE_DATE' ).
    lo_primitive_property->set_edm_name( 'ExchangeRateDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_POSTING_DATE' ).
    lo_primitive_property->set_edm_name( 'TranspChargePostingDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_CALC_DTE_TME_I' ).
    lo_primitive_property->set_edm_name( 'TranspChrgCalcDteTmeIsChanged' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_TERMS' ).
    lo_primitive_property->set_edm_name( 'PaymentTerms' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ).

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_CHARGE' ).
    lo_navigation_property->set_edm_name( '_FreightOrderCharge' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_CHARGE_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_CHRG_ELEMENT' ).
    lo_navigation_property->set_edm_name( '_FrtOrdChrgElement' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_CHRG_ELEMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_CHRG_ITM_EXCH_RATE' ).
    lo_navigation_property->set_edm_name( '_FrtOrdChrgItmExchRate' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_CHRG_ITM_EXCH_RA_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_freight_order_charge_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FREIGHT_ORDER_CHARGE_TYPE'
                                    is_structure              = VALUE tys_freight_order_charge_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FreightOrderCharge_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FREIGHT_ORDER_CHARGE' ).
    lo_entity_set->set_edm_name( 'FreightOrderCharge' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_CHARGES_OBJ' ).
    lo_primitive_property->set_edm_name( 'TransportationChargesObjUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_POSTING_STAT' ).
    lo_primitive_property->set_edm_name( 'TranspChargePostingStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_CALC_STATUS' ).
    lo_primitive_property->set_edm_name( 'TranspChargeCalcStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_DOCUMENT_CUR' ).
    lo_primitive_property->set_edm_name( 'TranspChargeDocumentCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_TOTAL_AMT_IN_D' ).
    lo_primitive_property->set_edm_name( 'TranspChrgTotalAmtInDocCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_LOCAL_CURREN' ).
    lo_primitive_property->set_edm_name( 'TranspChargeLocalCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_TOTAL_AMT_IN_L' ).
    lo_primitive_property->set_edm_name( 'TranspChrgTotalAmtInLoclCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_CALCULATION' ).
    lo_primitive_property->set_edm_name( 'TranspChargeCalculationDateTme' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXCHANGE_RATE_DATE' ).
    lo_primitive_property->set_edm_name( 'ExchangeRateDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_CHARGE_ITEM' ).
    lo_navigation_property->set_edm_name( '_FreightOrderChargeItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_CHARGE_ITE_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_freight_order_doc_ref_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FREIGHT_ORDER_DOC_REF_TYPE'
                                    is_structure              = VALUE tys_freight_order_doc_ref_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FreightOrderDocRef_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FREIGHT_ORDER_DOCUMENT_REF' ).
    lo_entity_set->set_edm_name( 'FreightOrderDocumentReference' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_DOC_R' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderDocRefUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_DOC_REFERENCE_I' ).
    lo_primitive_property->set_edm_name( 'TranspOrdDocReferenceID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_DOC_REFERENCE_T' ).
    lo_primitive_property->set_edm_name( 'TranspOrdDocReferenceType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_DOC_REFERENCE_2' ).
    lo_primitive_property->set_edm_name( 'TranspOrdDocReferenceItmID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_DOC_REFERENCE_3' ).
    lo_primitive_property->set_edm_name( 'TranspOrdDocReferenceItmType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_DOCUMENT_REFERE' ).
    lo_primitive_property->set_edm_name( 'TranspOrdDocumentReferenceDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_DOC_REF_ISSUER' ).
    lo_primitive_property->set_edm_name( 'TranspOrdDocRefIssuerName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_freight_order_event_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FREIGHT_ORDER_EVENT_TYPE'
                                    is_structure              = VALUE tys_freight_order_event_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FreightOrderEvent_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FREIGHT_ORDER_EVENT' ).
    lo_entity_set->set_edm_name( 'FreightOrderEvent' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_EVENT' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderEventUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_EVE_2' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderEvent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_EVENT_CODE' ).
    lo_primitive_property->set_edm_name( 'TranspOrdEventCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_EVT_ACTUAL_DATE' ).
    lo_primitive_property->set_edm_name( 'TranspOrdEvtActualDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_EVT_ACTUAL_DA_2' ).
    lo_primitive_property->set_edm_name( 'TranspOrdEvtActualDateTimeZone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_EVT_ESTIMATED_D' ).
    lo_primitive_property->set_edm_name( 'TranspOrdEvtEstimatedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOCATION_ADDITIONAL_UUID' ).
    lo_primitive_property->set_edm_name( 'LocationAdditionalUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_STOP' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderStopUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGED_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'ChangedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_freight_order_item_commo_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FREIGHT_ORDER_ITEM_COMMO_2'
                                    is_structure              = VALUE tys_freight_order_item_commo_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FreightOrderItemCommodityCode_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'FREIGHT_ORDER_ITEM_COMMODI' ).
    lo_entity_set->set_edm_name( 'FreightOrderItemCommodityCode' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_COMMODITY' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemCommodityCodeUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderItemUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_COMMODIT_2' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemCommodityCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TR_ORD_ITM_CMMDTY_CODE_NMB' ).
    lo_primitive_property->set_edm_name( 'TrOrdItmCmmdtyCodeNmbrngSchm' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_ITEM' ).
    lo_navigation_property->set_edm_name( '_FreightOrderItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_freight_order_item_doc_r_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FREIGHT_ORDER_ITEM_DOC_R_2'
                                    is_structure              = VALUE tys_freight_order_item_doc_r_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FreightOrderItemDocRef_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FREIGHT_ORDER_ITEM_DOC_REF' ).
    lo_entity_set->set_edm_name( 'FreightOrderItemDocRef' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_DOC_REFERE' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemDocReferenceUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderItemUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_DOC_REFE_2' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemDocReferenceID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_DOC_REFE_3' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemDocReferenceType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITM_DOC_REFEREN' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItmDocReferenceItemID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITM_DOC_REF_ITE' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItmDocRefItemType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITM_DOC_REF_DAT' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItmDocRefDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_DOC_REF_IS' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemDocRefIssuerName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_ITEM' ).
    lo_navigation_property->set_edm_name( '_FreightOrderItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_freight_order_item_seal_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FREIGHT_ORDER_ITEM_SEAL_TY'
                                    is_structure              = VALUE tys_freight_order_item_seal_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FreightOrderItemSeal_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FREIGHT_ORDER_ITEM_SEAL' ).
    lo_entity_set->set_edm_name( 'FreightOrderItemSeal' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_SEAL_UUID' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemSealUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderItemUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_SEAL_NUMBE' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemSealNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_SEALING_DA' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemSealingDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_ITEM' ).
    lo_navigation_property->set_edm_name( '_FreightOrderItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_freight_order_item_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FREIGHT_ORDER_ITEM_TYPE'
                                    is_structure              = VALUE tys_freight_order_item_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FreightOrderItem_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FREIGHT_ORDER_ITEM' ).
    lo_entity_set->set_edm_name( 'FreightOrderItem' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderItemUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_TYPE' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_PARENT_ITE' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemParentItemUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_DESC' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemDesc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MAIN_CARGO_ITEM' ).
    lo_primitive_property->set_edm_name( 'IsMainCargoItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_SORTING' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemSorting' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SOURCE_STOP_UUID' ).
    lo_primitive_property->set_edm_name( 'SourceStopUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESTINATION_STOP_UUID' ).
    lo_primitive_property->set_edm_name( 'DestinationStopUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPER_UUID' ).
    lo_primitive_property->set_edm_name( 'ShipperUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPER' ).
    lo_primitive_property->set_edm_name( 'Shipper' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPER_ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'ShipperAddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSIGNEE_UUID' ).
    lo_primitive_property->set_edm_name( 'ConsigneeUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSIGNEE' ).
    lo_primitive_property->set_edm_name( 'Consignee' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSIGNEE_ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'ConsigneeAddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FREIGHT_UNIT_UUID' ).
    lo_primitive_property->set_edm_name( 'FreightUnitUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PREDECESSOR_TRANSPORTATION' ).
    lo_primitive_property->set_edm_name( 'PredecessorTransportationOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_BASE_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'TranspBaseDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_BASE_DOCUMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'TranspBaseDocumentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_BASE_DOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'TranspBaseDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_BASE_DOCUMENT_ITE_2' ).
    lo_primitive_property->set_edm_name( 'TranspBaseDocumentItemType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_EQUIPMENT_G' ).
    lo_primitive_property->set_edm_name( 'TransportationEquipmentGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_EQUIPMENT_T' ).
    lo_primitive_property->set_edm_name( 'TransportationEquipmentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_EQUIPMENT_IS_SHIPPE' ).
    lo_primitive_property->set_edm_name( 'TranspEquipmentIsShipperOwned' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_EQUIPMENT_PLATE_NUM' ).
    lo_primitive_property->set_edm_name( 'TranspEquipmentPlateNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_EQUIP_REGISTRATION' ).
    lo_primitive_property->set_edm_name( 'TranspEquipRegistrationCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_EQUIP_CAPACITY_LENG' ).
    lo_primitive_property->set_edm_name( 'TranspEquipCapacityLength' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ).
    lo_primitive_property->set_scale( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_EQUIP_CAPACITY_WIDT' ).
    lo_primitive_property->set_edm_name( 'TranspEquipCapacityWidth' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ).
    lo_primitive_property->set_scale( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_EQUIP_CAPACITY_HEIG' ).
    lo_primitive_property->set_edm_name( 'TranspEquipCapacityHeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ).
    lo_primitive_property->set_scale( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_EQUIP_CAPACITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'TranspEquipCapacityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_EQUIP_CAPACITY_WEIG' ).
    lo_primitive_property->set_edm_name( 'TranspEquipCapacityWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale( 14 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_EQUIP_CAPACITY_WE_2' ).
    lo_primitive_property->set_edm_name( 'TranspEquipCapacityWeightUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_EQUIP_CAPACITY_VOLU' ).
    lo_primitive_property->set_edm_name( 'TranspEquipCapacityVolume' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale( 14 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_EQUIP_CAPACITY_VO_2' ).
    lo_primitive_property->set_edm_name( 'TranspEquipCapacityVolumeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_PACKAGE_ID' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemPackageID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_UUID' ).
    lo_primitive_property->set_edm_name( 'ProductUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_ID' ).
    lo_primitive_property->set_edm_name( 'ProductID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_FREIGHT_GROUP' ).
    lo_primitive_property->set_edm_name( 'MaterialFreightGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'TransportationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITM_MIN_TEMP' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItmMinTemp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ).
    lo_primitive_property->set_scale( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITM_MAX_TEMP' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItmMaxTemp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ).
    lo_primitive_property->set_scale( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_TEMPERATUR' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemTemperatureUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale( 14 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_QUANTITY_U' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_GROSS_WEIG' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemGrossWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale( 14 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_GROSS_WE_2' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemGrossWeightUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_GROSS_VOLU' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemGrossVolume' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale( 14 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_GROSS_VO_2' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemGrossVolumeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_NET_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemNetWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale( 14 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_NET_WEIG_2' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemNetWeightUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_ITEM_DNGRS_GDS' ).
    lo_primitive_property->set_edm_name( 'TranspOrdItemDngrsGdsSts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CONSIGNEE_ADDR_DFLT_RPRSTN' ).
    lo_navigation_property->set_edm_name( '_ConsigneeAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_ITM_MAIN_BPADDR__3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_ITEM_COMMODI' ).
    lo_navigation_property->set_edm_name( '_FreightOrderItemCommodityCode' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_ITEM_COMMO_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_ITEM_DOC_REF' ).
    lo_navigation_property->set_edm_name( '_FreightOrderItemDocRef' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_ITEM_DOC_R_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_ITEM_SEAL' ).
    lo_navigation_property->set_edm_name( '_FreightOrderItemSeal' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_ITEM_SEAL_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_ITM_MAIN_BPADDR_DF' ).
    lo_navigation_property->set_edm_name( '_FrtOrdItmMainBPAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_ITM_MAIN_BPADDR__3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'SHIPPER_ADDR_DFLT_RPRSTN' ).
    lo_navigation_property->set_edm_name( '_ShipperAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_ITM_MAIN_BPADDR__3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_freight_order_stage_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FREIGHT_ORDER_STAGE_TYPE'
                                    is_structure              = VALUE tys_freight_order_stage_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FreightOrderStage_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FREIGHT_ORDER_STAGE' ).
    lo_entity_set->set_edm_name( 'FreightOrderStage' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_STAGE' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderStageUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_STA_2' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderStage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STAGE_TYPE' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStageType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STAGE_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStageCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_MODE' ).
    lo_primitive_property->set_edm_name( 'TransportationMode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_MODE_CATEGO' ).
    lo_primitive_property->set_edm_name( 'TransportationModeCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STGE_INVCG_CARR' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStgeInvcgCarrLvl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CARRIER_UUID' ).
    lo_primitive_property->set_edm_name( 'CarrierUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CARRIER' ).
    lo_primitive_property->set_edm_name( 'Carrier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STAGE_SCACCODE' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStageSCACCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STGE_INVCG_CA_2' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStgeInvcgCarrUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STAGE_INVOICING' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStageInvoicingCarrier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STGE_INVCG_SCAC' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStgeInvcgSCACCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STAGE_DISTANCE' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStageDistance' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 28 ).
    lo_primitive_property->set_scale( 6 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STAGE_DISTANC_2' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStageDistanceUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STAGE_NET_DURAT' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStageNetDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STAGE_SRCE_STOP' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStageSrceStopUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STAGE_DEST_STOP' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStageDestStopUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'EXECTG_CARRIER_ADDR_DFLT_R' ).
    lo_navigation_property->set_edm_name( '_ExectgCarrierAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_STGE_BPADDR_DFLT_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_STOP' ).
    lo_navigation_property->set_edm_name( '_FreightOrderStop' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_STOP_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_STAGE_BPADDR_DFLT' ).
    lo_navigation_property->set_edm_name( '_FrtOrdStageBPAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_STGE_BPADDR_DFLT_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'INVCG_CARRIER_ADDR_DFLT_RP' ).
    lo_navigation_property->set_edm_name( '_InvcgCarrierAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_STGE_BPADDR_DFLT_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_freight_order_stop_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FREIGHT_ORDER_STOP_TYPE'
                                    is_structure              = VALUE tys_freight_order_stop_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FreightOrderStop_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FREIGHT_ORDER_STOP' ).
    lo_entity_set->set_edm_name( 'FreightOrderStop' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_STOP' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderStopUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_STO_2' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderStop' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STOP_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStopCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STOP_ROLE' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStopRole' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOCATION_ADDITIONAL_UUID' ).
    lo_primitive_property->set_edm_name( 'LocationAdditionalUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOCATION_ID' ).
    lo_primitive_property->set_edm_name( 'LocationId' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOCATION_UNCODE' ).
    lo_primitive_property->set_edm_name( 'LocationUNCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOCATION_IATACODE' ).
    lo_primitive_property->set_edm_name( 'LocationIATACode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STOP_PLAN_TRANS' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStopPlanTranspDteTme' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STOP_DTE_TME' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStopDteTme' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STOP_APPT_STRT' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStopApptStrtDteTme' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STOP_APPT_END_D' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStopApptEndDteTme' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_STOP_CARR_CONF_STRT' ).
    lo_primitive_property->set_edm_name( 'TranspStopCarrConfStrtDteTme' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_STOP_CARR_CONF_END' ).
    lo_primitive_property->set_edm_name( 'TranspStopCarrConfEndDteTme' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STOP_SEQUENCE_P' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStopSequencePosition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STOP_HNDLG_EXEC' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStopHndlgExecStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_STOP_EXEC_IS_BL' ).
    lo_primitive_property->set_edm_name( 'TranspOrdStopExecIsBlocked' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_STAGE' ).
    lo_navigation_property->set_edm_name( '_FreightOrderStage' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_STAGE_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_STOP_LOC_ADDR_DFLT' ).
    lo_navigation_property->set_edm_name( '_FrtOrdStopLocAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_STOP_LOC_ADDR_DF_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_freight_order_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FREIGHT_ORDER_TYPE'
                                    is_structure              = VALUE tys_freight_order_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FreightOrder_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FREIGHT_ORDER' ).
    lo_entity_set->set_edm_name( 'FreightOrder' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER' ).
    lo_primitive_property->set_edm_name( 'TransportationOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_TYPE' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_CATEG' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_SHIPPING_TY' ).
    lo_primitive_property->set_edm_name( 'TransportationShippingType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_MODE' ).
    lo_primitive_property->set_edm_name( 'TransportationMode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_MODE_CATEGO' ).
    lo_primitive_property->set_edm_name( 'TransportationModeCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CARRIER_UUID' ).
    lo_primitive_property->set_edm_name( 'CarrierUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CARRIER' ).
    lo_primitive_property->set_edm_name( 'Carrier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STANDARD_CARRIER_ALPHA_COD' ).
    lo_primitive_property->set_edm_name( 'StandardCarrierAlphaCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_EXECUTING_CARRI' ).
    lo_primitive_property->set_edm_name( 'TranspOrdExecutingCarrierUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_EXECUTING_CAR_2' ).
    lo_primitive_property->set_edm_name( 'TranspOrdExecutingCarrier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPER_UUID' ).
    lo_primitive_property->set_edm_name( 'ShipperUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPER' ).
    lo_primitive_property->set_edm_name( 'Shipper' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPER_ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'ShipperAddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSIGNEE_UUID' ).
    lo_primitive_property->set_edm_name( 'ConsigneeUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSIGNEE' ).
    lo_primitive_property->set_edm_name( 'Consignee' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSIGNEE_ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'ConsigneeAddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_PURG_ORG' ).
    lo_primitive_property->set_edm_name( 'TranspPurgOrg' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_PURG_ORG_EXT_ID' ).
    lo_primitive_property->set_edm_name( 'TranspPurgOrgExtID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_PURG_GROUP' ).
    lo_primitive_property->set_edm_name( 'TranspPurgGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_PURG_GROUP_EXT_ID' ).
    lo_primitive_property->set_edm_name( 'TranspPurgGroupExtID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURG_ORG_COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'PurgOrgCompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CARRIER_ACCOUNT_NUMBER' ).
    lo_primitive_property->set_edm_name( 'CarrierAccountNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 14 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_MEANS_OF_TRANSPORT' ).
    lo_primitive_property->set_edm_name( 'TranspMeansOfTransport' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_PARTNER_REFEREN' ).
    lo_primitive_property->set_edm_name( 'TranspOrdPartnerReference' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_RESPONSIBLE_PER' ).
    lo_primitive_property->set_edm_name( 'TranspOrdResponsiblePerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_HAS_MLTPL_EXECT' ).
    lo_primitive_property->set_edm_name( 'TranspOrdHasMltplExectgPties' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_INVOICING_CARRI' ).
    lo_primitive_property->set_edm_name( 'TranspOrdInvoicingCarrierLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_LIFE_CYCLE_STAT' ).
    lo_primitive_property->set_edm_name( 'TranspOrdLifeCycleStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORDER_SUBCONTRG_STS' ).
    lo_primitive_property->set_edm_name( 'TranspOrderSubcontrgSts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_CONF' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderConfSts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_EXEC' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderExecSts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_GOODS_MOVEMENT' ).
    lo_primitive_property->set_edm_name( 'TranspOrdGoodsMovementStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_WHSE_PROCESSING' ).
    lo_primitive_property->set_edm_name( 'TranspOrdWhseProcessingStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORDER_DNGRS_GDS_STS' ).
    lo_primitive_property->set_edm_name( 'TranspOrderDngrsGdsSts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_EXECUTION_IS_BL' ).
    lo_primitive_property->set_edm_name( 'TranspOrdExecutionIsBlocked' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_CRTN' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderCrtnType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGED_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'ChangedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CARRIER_ADDR_DFLT_RPRSTN' ).
    lo_navigation_property->set_edm_name( '_CarrierAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_MAIN_BPADDR_DFLT_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CONSIGNEE_ADDR_DFLT_RPRSTN' ).
    lo_navigation_property->set_edm_name( '_ConsigneeAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_MAIN_BPADDR_DFLT_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'EXECTG_CARRIER_ADDR_DFLT_R' ).
    lo_navigation_property->set_edm_name( '_ExectgCarrierAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_MAIN_BPADDR_DFLT_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_BUSINESS_PAR' ).
    lo_navigation_property->set_edm_name( '_FreightOrderBusinessPartner' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_BUSINESS_P_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_CHARGE' ).
    lo_navigation_property->set_edm_name( '_FreightOrderCharge' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_CHARGE_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_DOCUMENT_REF' ).
    lo_navigation_property->set_edm_name( '_FreightOrderDocumentReference' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_DOC_REF_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_EVENT' ).
    lo_navigation_property->set_edm_name( '_FreightOrderEvent' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_EVENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_ITEM' ).
    lo_navigation_property->set_edm_name( '_FreightOrderItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_STOP' ).
    lo_navigation_property->set_edm_name( '_FreightOrderStop' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_STOP_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_MAIN_BPADDR_DFLT_R' ).
    lo_navigation_property->set_edm_name( '_FrtOrdMainBPAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_MAIN_BPADDR_DFLT_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'SHIPPER_ADDR_DFLT_RPRSTN' ).
    lo_navigation_property->set_edm_name( '_ShipperAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_MAIN_BPADDR_DFLT_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_frt_ord_bpaddr_addl_rprs_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FRT_ORD_BPADDR_ADDL_RPRS_2'
                                    is_structure              = VALUE tys_frt_ord_bpaddr_addl_rprs_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FrtOrdBPAddrAddlRprstn_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'FRT_ORD_BPADDR_ADDL_RPRSTN' ).
    lo_entity_set->set_edm_name( 'FrtOrdBPAddrAddlRprstn' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_BUS_P' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderBusPartUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_REPRESENTATION_COD' ).
    lo_primitive_property->set_edm_name( 'AddressRepresentationCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESSEE_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'AddresseeFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_BPADDR_DFLT_RPRSTN' ).
    lo_navigation_property->set_edm_name( '_FrtOrdBPAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_BPADDR_DFLT_RPRS_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_frt_ord_bpaddr_dflt_rprs_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FRT_ORD_BPADDR_DFLT_RPRS_2'
                                    is_structure              = VALUE tys_frt_ord_bpaddr_dflt_rprs_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FrtOrdBPAddrDfltRprstn_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FRT_ORD_BPADDR_DFLT_RPRSTN' ).
    lo_entity_set->set_edm_name( 'FrtOrdBPAddrDfltRprstn' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_BUS_P' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderBusPartUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESSEE_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'AddresseeFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'EmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 241 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_MOBILE_PHONE' ).
    lo_primitive_property->set_edm_name( 'InternationalMobilePhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalFaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_BUSINESS_PAR' ).
    lo_navigation_property->set_edm_name( '_FreightOrderBusinessPartner' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_BUSINESS_P_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_BPADDR_ADDL_RPRSTN' ).
    lo_navigation_property->set_edm_name( '_FrtOrdBPAddrAddlRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_BPADDR_ADDL_RPRS_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_frt_ord_chrg_calc_base_typ.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FRT_ORD_CHRG_CALC_BASE_TYP'
                                    is_structure              = VALUE tys_frt_ord_chrg_calc_base_typ( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FrtOrdChrgCalcBase_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'FRT_ORD_CHRG_CALC_BASE' ).
    lo_entity_set->set_edm_name( 'FrtOrdChrgCalcBase' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_CALC_BASE_UUID' ).
    lo_primitive_property->set_edm_name( 'TranspChrgCalcBaseUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_ITEM_ELEMENT' ).
    lo_primitive_property->set_edm_name( 'TranspChargeItemElementUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_CALCULATION_BA' ).
    lo_primitive_property->set_edm_name( 'TranspChrgCalculationBase' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_SCALE_ITEM_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'TranspScaleItemQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_SCALE_ITEM_QUANTI_2' ).
    lo_primitive_property->set_edm_name( 'TranspScaleItemQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale( 14 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_SCALE_ITEM_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TranspScaleItemCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_SCALE_ITEM_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'TranspScaleItemAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_SCALE_ITEM_VALUE_CH' ).
    lo_primitive_property->set_edm_name( 'TranspScaleItemValueChar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 255 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_DATA_SOURCE_QTY_UNI' ).
    lo_primitive_property->set_edm_name( 'TranspDataSourceQtyUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_DATA_SOURCE_QUANTIT' ).
    lo_primitive_property->set_edm_name( 'TranspDataSourceQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale( 14 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_DATA_SOURCE_CURRENC' ).
    lo_primitive_property->set_edm_name( 'TranspDataSourceCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_DATA_SOURCE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'TranspDataSourceAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_DATA_SOURCE_VALUE_C' ).
    lo_primitive_property->set_edm_name( 'TranspDataSourceValueChar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 255 ).

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_CHRG_ELEMENT' ).
    lo_navigation_property->set_edm_name( '_FrtOrdChrgElement' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_CHRG_ELEMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_frt_ord_chrg_calc_rule_typ.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FRT_ORD_CHRG_CALC_RULE_TYP'
                                    is_structure              = VALUE tys_frt_ord_chrg_calc_rule_typ( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FrtOrdChrgCalcRule_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'FRT_ORD_CHRG_CALC_RULE' ).
    lo_entity_set->set_edm_name( 'FrtOrdChrgCalcRule' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_CALC_RULE_UUID' ).
    lo_primitive_property->set_edm_name( 'TranspChrgCalcRuleUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_ITEM_ELEMENT' ).
    lo_primitive_property->set_edm_name( 'TranspChargeItemElementUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_CALCULATION_BA' ).
    lo_primitive_property->set_edm_name( 'TranspChrgCalculationBase' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_RATE_CALC_RULE_QTY' ).
    lo_primitive_property->set_edm_name( 'TranspRateCalcRuleQtyUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_RATE_CALC_RULE_QUAN' ).
    lo_primitive_property->set_edm_name( 'TranspRateCalcRuleQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale( 14 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_DATA_SOURCE_QU' ).
    lo_primitive_property->set_edm_name( 'TranspChrgDataSourceQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale( 14 ).

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_CHRG_ELEMENT' ).
    lo_navigation_property->set_edm_name( '_FrtOrdChrgElement' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_CHRG_ELEMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_frt_ord_chrg_element_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FRT_ORD_CHRG_ELEMENT_TYPE'
                                    is_structure              = VALUE tys_frt_ord_chrg_element_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FrtOrdChrgElement_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FRT_ORD_CHRG_ELEMENT' ).
    lo_entity_set->set_edm_name( 'FrtOrdChrgElement' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_ITEM_ELEMENT' ).
    lo_primitive_property->set_edm_name( 'TranspChargeItemElementUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_ITEM_UUID' ).
    lo_primitive_property->set_edm_name( 'TranspChargeItemUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_RATE_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationRateUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CALCULATION_SHEET_I' ).
    lo_primitive_property->set_edm_name( 'TranspCalculationSheetItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_TYPE' ).
    lo_primitive_property->set_edm_name( 'TranspChargeType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CALC_RESOLUTION_BAS' ).
    lo_primitive_property->set_edm_name( 'TranspCalcResolutionBase' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CALCULATION_DATE_TY' ).
    lo_primitive_property->set_edm_name( 'TranspCalculationDateType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_CALCULATION' ).
    lo_primitive_property->set_edm_name( 'TranspChargeCalculationDateTme' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_CALCULATIO_2' ).
    lo_primitive_property->set_edm_name( 'TranspChargeCalculationCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_CALC_AMT_IN' ).
    lo_primitive_property->set_edm_name( 'TranspChargeCalcAmtInCalcCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_RATE_CURREN' ).
    lo_primitive_property->set_edm_name( 'TransportationRateCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_RATE_AMOUNT_IN_RATE' ).
    lo_primitive_property->set_edm_name( 'TranspRateAmountInRateCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_RATE_PCT_UN' ).
    lo_primitive_property->set_edm_name( 'TransportationRatePctUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_RATE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'TransportationRateAmountPct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_RATE_AMT_IS_MANUALL' ).
    lo_primitive_property->set_edm_name( 'TranspRateAmtIsManuallyChanged' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_LINE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'TranspChrgLineNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_REF_FROM_LINE' ).
    lo_primitive_property->set_edm_name( 'TranspChrgRefFromLineNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_REF_TO_LINE_NU' ).
    lo_primitive_property->set_edm_name( 'TranspChrgRefToLineNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_DOCUMENT_CUR' ).
    lo_primitive_property->set_edm_name( 'TranspChargeDocumentCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_AMOUNT_IN_DOC' ).
    lo_primitive_property->set_edm_name( 'TranspChrgAmountInDocCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_LOCAL_CURREN' ).
    lo_primitive_property->set_edm_name( 'TranspChargeLocalCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_AMOUNT_IN_LOCL' ).
    lo_primitive_property->set_edm_name( 'TranspChrgAmountInLoclCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ).
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_INDEX_RATE_TABLE_UU' ).
    lo_primitive_property->set_edm_name( 'TranspIndexRateTableUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_RATE' ).
    lo_primitive_property->set_edm_name( 'TransportationRate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_IS_MANDATORY' ).
    lo_primitive_property->set_edm_name( 'TranspChargeIsMandatory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_DIMN_WEIGHT_PROFILE' ).
    lo_primitive_property->set_edm_name( 'TranspDimnWeightProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CALCULATION_METHOD' ).
    lo_primitive_property->set_edm_name( 'TranspCalculationMethodType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CALCULATION_METHO_2' ).
    lo_primitive_property->set_edm_name( 'TranspCalculationMethodName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_CALC_STATUS' ).
    lo_primitive_property->set_edm_name( 'TranspChargeCalcStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_POSTING_STAT' ).
    lo_primitive_property->set_edm_name( 'TranspChargePostingStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_CHARGE_ITEM' ).
    lo_navigation_property->set_edm_name( '_FreightOrderChargeItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_CHARGE_ITE_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_CHRG_CALC_BASE' ).
    lo_navigation_property->set_edm_name( '_FrtOrdChrgCalcBase' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_CHRG_CALC_BASE_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_CHRG_CALC_RULE' ).
    lo_navigation_property->set_edm_name( '_FrtOrdChrgCalcRule' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_CHRG_CALC_RULE_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_CHRG_ELMNT_EXCH_RA' ).
    lo_navigation_property->set_edm_name( '_FrtOrdChrgElmntExchRate' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_CHRG_ELMNT_EXCH__2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_frt_ord_chrg_elmnt_exch__2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FRT_ORD_CHRG_ELMNT_EXCH__2'
                                    is_structure              = VALUE tys_frt_ord_chrg_elmnt_exch__2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FrtOrdChrgElmntExchRate_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FRT_ORD_CHRG_ELMNT_EXCH_RA' ).
    lo_entity_set->set_edm_name( 'FrtOrdChrgElmntExchRate' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_EXCHANGE_RATE' ).
    lo_primitive_property->set_edm_name( 'TranspChrgExchangeRateUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_ITEM_ELEMENT' ).
    lo_primitive_property->set_edm_name( 'TranspChargeItemElementUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SOURCE_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'SourceCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TARGET_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TargetCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_EXCHANGE_RAT_2' ).
    lo_primitive_property->set_edm_name( 'TranspChrgExchangeRate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 28 ).
    lo_primitive_property->set_scale( 14 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_EXCHANGE_RAT_3' ).
    lo_primitive_property->set_edm_name( 'TranspChrgExchangeRateType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXCHANGE_RATE_DATE' ).
    lo_primitive_property->set_edm_name( 'ExchangeRateDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_EXCH_RATE_DATE_IS_M' ).
    lo_primitive_property->set_edm_name( 'TranspExchRateDateIsMnllyChgd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_EXCH_RATE_IS_MANUAL' ).
    lo_primitive_property->set_edm_name( 'TranspExchRateIsManuallyChgd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_CHRG_ELEMENT' ).
    lo_navigation_property->set_edm_name( '_FrtOrdChrgElement' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_CHRG_ELEMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_frt_ord_chrg_itm_exch_ra_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FRT_ORD_CHRG_ITM_EXCH_RA_2'
                                    is_structure              = VALUE tys_frt_ord_chrg_itm_exch_ra_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FrtOrdChrgItmExchRate_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FRT_ORD_CHRG_ITM_EXCH_RATE' ).
    lo_entity_set->set_edm_name( 'FrtOrdChrgItmExchRate' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_EXCHANGE_RATE' ).
    lo_primitive_property->set_edm_name( 'TranspChrgExchangeRateUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHARGE_ITEM_UUID' ).
    lo_primitive_property->set_edm_name( 'TranspChargeItemUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SOURCE_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'SourceCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TARGET_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TargetCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_EXCHANGE_RAT_2' ).
    lo_primitive_property->set_edm_name( 'TranspChrgExchangeRate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 28 ).
    lo_primitive_property->set_scale( 14 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_CHRG_EXCHANGE_RAT_3' ).
    lo_primitive_property->set_edm_name( 'TranspChrgExchangeRateType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXCHANGE_RATE_DATE' ).
    lo_primitive_property->set_edm_name( 'ExchangeRateDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_CHARGE_ITEM' ).
    lo_navigation_property->set_edm_name( '_FreightOrderChargeItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_CHARGE_ITE_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_frt_ord_itm_main_bpaddr__2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FRT_ORD_ITM_MAIN_BPADDR__2'
                                    is_structure              = VALUE tys_frt_ord_itm_main_bpaddr__2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FrtOrdItmMainBPAddrAddlRprstn_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'FRT_ORD_ITM_MAIN_BPADDR_AD' ).
    lo_entity_set->set_edm_name( 'FrtOrdItmMainBPAddrAddlRprstn' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderItemUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_BIZ_PARTNER_FUN' ).
    lo_primitive_property->set_edm_name( 'TranspOrdBizPartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_REPRESENTATION_COD' ).
    lo_primitive_property->set_edm_name( 'AddressRepresentationCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESSEE_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'AddresseeFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_ITM_MAIN_BPADDR_DF' ).
    lo_navigation_property->set_edm_name( '_FrtOrdItmMainBPAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_ITM_MAIN_BPADDR__3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_frt_ord_itm_main_bpaddr__3.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FRT_ORD_ITM_MAIN_BPADDR__3'
                                    is_structure              = VALUE tys_frt_ord_itm_main_bpaddr__3( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FrtOrdItmMainBPAddrDfltRprstn_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FRT_ORD_ITM_MAIN_BPADDR_DF' ).
    lo_entity_set->set_edm_name( 'FrtOrdItmMainBPAddrDfltRprstn' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_ITEM' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderItemUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_BIZ_PARTNER_FUN' ).
    lo_primitive_property->set_edm_name( 'TranspOrdBizPartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESSEE_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'AddresseeFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'EmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 241 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_MOBILE_PHONE' ).
    lo_primitive_property->set_edm_name( 'InternationalMobilePhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalFaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_ITEM' ).
    lo_navigation_property->set_edm_name( '_FreightOrderItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_ITM_MAIN_BPADDR_AD' ).
    lo_navigation_property->set_edm_name( '_FrtOrdItmMainBPAddrAddlRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_ITM_MAIN_BPADDR__2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_frt_ord_main_bpaddr_addl_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FRT_ORD_MAIN_BPADDR_ADDL_2'
                                    is_structure              = VALUE tys_frt_ord_main_bpaddr_addl_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FrtOrdMainBPAddrAddlRprstn_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'FRT_ORD_MAIN_BPADDR_ADDL_R' ).
    lo_entity_set->set_edm_name( 'FrtOrdMainBPAddrAddlRprstn' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_BIZ_PARTNER_FUN' ).
    lo_primitive_property->set_edm_name( 'TranspOrdBizPartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_REPRESENTATION_COD' ).
    lo_primitive_property->set_edm_name( 'AddressRepresentationCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESSEE_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'AddresseeFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_MAIN_BPADDR_DFLT_R' ).
    lo_navigation_property->set_edm_name( '_FrtOrdMainBPAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_MAIN_BPADDR_DFLT_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_frt_ord_main_bpaddr_dflt_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FRT_ORD_MAIN_BPADDR_DFLT_2'
                                    is_structure              = VALUE tys_frt_ord_main_bpaddr_dflt_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FrtOrdMainBPAddrDfltRprstn_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FRT_ORD_MAIN_BPADDR_DFLT_R' ).
    lo_entity_set->set_edm_name( 'FrtOrdMainBPAddrDfltRprstn' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_BIZ_PARTNER_FUN' ).
    lo_primitive_property->set_edm_name( 'TranspOrdBizPartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESSEE_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'AddresseeFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'EmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 241 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_MOBILE_PHONE' ).
    lo_primitive_property->set_edm_name( 'InternationalMobilePhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalFaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_MAIN_BPADDR_ADDL_R' ).
    lo_navigation_property->set_edm_name( '_FrtOrdMainBPAddrAddlRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_MAIN_BPADDR_ADDL_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_frt_ord_stge_bpaddr_addl_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FRT_ORD_STGE_BPADDR_ADDL_2'
                                    is_structure              = VALUE tys_frt_ord_stge_bpaddr_addl_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FrtOrdStgeBPAddrAddlRprstn_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'FRT_ORD_STGE_BPADDR_ADDL_R' ).
    lo_entity_set->set_edm_name( 'FrtOrdStgeBPAddrAddlRprstn' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_STAGE' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderStageUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_BIZ_PARTNER_FUN' ).
    lo_primitive_property->set_edm_name( 'TranspOrdBizPartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_REPRESENTATION_COD' ).
    lo_primitive_property->set_edm_name( 'AddressRepresentationCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESSEE_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'AddresseeFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_STGE_BPADDR_DFLT_R' ).
    lo_navigation_property->set_edm_name( '_FrtOrdStgeBPAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_STGE_BPADDR_DFLT_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_frt_ord_stge_bpaddr_dflt_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FRT_ORD_STGE_BPADDR_DFLT_2'
                                    is_structure              = VALUE tys_frt_ord_stge_bpaddr_dflt_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FrtOrdStgeBPAddrDfltRprstn_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FRT_ORD_STGE_BPADDR_DFLT_R' ).
    lo_entity_set->set_edm_name( 'FrtOrdStgeBPAddrDfltRprstn' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_STAGE' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderStageUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSP_ORD_BIZ_PARTNER_FUN' ).
    lo_primitive_property->set_edm_name( 'TranspOrdBizPartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ).
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESSEE_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'AddresseeFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'EmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 241 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_MOBILE_PHONE' ).
    lo_primitive_property->set_edm_name( 'InternationalMobilePhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalFaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_STAGE' ).
    lo_navigation_property->set_edm_name( '_FreightOrderStage' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_STAGE_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_STGE_BPADDR_ADDL_R' ).
    lo_navigation_property->set_edm_name( '_FrtOrdStgeBPAddrAddlRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_STGE_BPADDR_ADDL_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_frt_ord_stop_loc_addr_ad_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FRT_ORD_STOP_LOC_ADDR_AD_2'
                                    is_structure              = VALUE tys_frt_ord_stop_loc_addr_ad_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FrtOrdStopLocAddrAddlRprstn_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'FRT_ORD_STOP_LOC_ADDR_ADDL' ).
    lo_entity_set->set_edm_name( 'FrtOrdStopLocAddrAddlRprstn' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_STOP' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderStopUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_REPRESENTATION_COD' ).
    lo_primitive_property->set_edm_name( 'AddressRepresentationCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ).
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESSEE_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'AddresseeFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_STOP_LOC_ADDR_DFLT' ).
    lo_navigation_property->set_edm_name( '_FrtOrdStopLocAddrDfltRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_STOP_LOC_ADDR_DF_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_frt_ord_stop_loc_addr_df_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'FRT_ORD_STOP_LOC_ADDR_DF_2'
                                    is_structure              = VALUE tys_frt_ord_stop_loc_addr_df_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'FrtOrdStopLocAddrDfltRprstn_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'FRT_ORD_STOP_LOC_ADDR_DFLT' ).
    lo_entity_set->set_edm_name( 'FrtOrdStopLocAddrDfltRprstn' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_STOP' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderStopUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_ORDER_UUID' ).
    lo_primitive_property->set_edm_name( 'TransportationOrderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESSEE_FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'AddresseeFullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER' ).
    lo_navigation_property->set_edm_name( '_FreightOrder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FREIGHT_ORDER_STOP' ).
    lo_navigation_property->set_edm_name( '_FreightOrderStop' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FREIGHT_ORDER_STOP_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FRT_ORD_STOP_LOC_ADDR_ADDL' ).
    lo_navigation_property->set_edm_name( '_FrtOrdStopLocAddrAddlRprstn' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'FRT_ORD_STOP_LOC_ADDR_AD_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_assign_freight_unit.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'ASSIGN_FREIGHT_UNIT' ).
    lo_action->set_edm_name( 'AssignFreightUnit' ) ##NO_TEXT.
    lo_action->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'FREIGHT_ORDER_TYPE' ).
    lo_parameter->set_is_binding_parameter( ).

    lo_parameter = lo_action->create_parameter( 'TRANSPORTATION_ORDER_ITEM' ).
    lo_parameter->set_edm_name( 'TransportationOrderItemUUID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'TRANSPORTATION_ORDER_ITEM' ).
    lo_parameter->create_vcs_value_control( ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_action->create_parameter( 'FREIGHT_UNITS' ).
    lo_parameter->set_edm_name( '_FreightUnits' ) ##NO_TEXT.
    lo_parameter->set_complex_type( 'D_FREIGHT_UNIT_ASSIGN_PARA' ).
    lo_parameter->set_is_collection( ).

  ENDMETHOD.


  METHOD def_calculate_transportation_c.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'CALCULATE_TRANSPORTATION_C' ).
    lo_action->set_edm_name( 'CalculateTransportationCharges' ) ##NO_TEXT.


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'FREIGHT_ORDER_TYPE' ).
    lo_parameter->set_is_binding_parameter( ).

  ENDMETHOD.


  METHOD def_cancel_freight_order.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'CANCEL_FREIGHT_ORDER' ).
    lo_action->set_edm_name( 'CancelFreightOrder' ) ##NO_TEXT.


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'FREIGHT_ORDER_TYPE' ).
    lo_parameter->set_is_binding_parameter( ).

  ENDMETHOD.


  METHOD def_create_freight_order.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'CREATE_FREIGHT_ORDER' ).
    lo_action->set_edm_name( 'CreateFreightOrder' ) ##NO_TEXT.


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'FREIGHT_ORDER_TYPE' ).
    lo_parameter->set_is_binding_parameter( ).
    lo_parameter->set_is_collection( ).

    lo_parameter = lo_action->create_parameter( 'TRANSPORTATION_ORDER_TYPE' ).
    lo_parameter->set_edm_name( 'TransportationOrderType' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'TRANSPORTATION_ORDER_TYPE' ).

    lo_parameter = lo_action->create_parameter( 'TRANSPORTATION_ORDER' ).
    lo_parameter->set_edm_name( 'TransportationOrder' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'TRANSPORTATION_ORDER' ).

    lo_return = lo_action->create_return( ).
    lo_return->set_entity_type( 'FREIGHT_ORDER_TYPE' ).

  ENDMETHOD.


  METHOD def_report_event.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'REPORT_EVENT' ).
    lo_action->set_edm_name( 'ReportEvent' ) ##NO_TEXT.
    lo_action->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'FREIGHT_ORDER_TYPE' ).
    lo_parameter->set_is_binding_parameter( ).

    lo_parameter = lo_action->create_parameter( 'TRANSP_ORD_EVENT_CODE' ).
    lo_parameter->set_edm_name( 'TranspOrdEventCode' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'TRANSP_ORD_EVENT_CODE' ).

    lo_parameter = lo_action->create_parameter( 'TRANSPORTATION_ORDER_STOP' ).
    lo_parameter->set_edm_name( 'TransportationOrderStopUUID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'TRANSPORTATION_ORDER_STOP' ).
    lo_parameter->create_vcs_value_control( ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_action->create_parameter( 'TRANSP_ORD_EVT_ACTUAL_DATE' ).
    lo_parameter->set_edm_name( 'TranspOrdEvtActualDateTime' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'TRANSP_ORD_EVT_ACTUAL_DATE' ).
    lo_parameter->create_vcs_value_control( ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_action->create_parameter( 'TRANSP_ORD_EVT_ESTIMATED_D' ).
    lo_parameter->set_edm_name( 'TranspOrdEvtEstimatedDateTime' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'TRANSP_ORD_EVT_ESTIMATED_D' ).
    lo_parameter->create_vcs_value_control( ).
    lo_parameter->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_unassign_freight_unit.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'UNASSIGN_FREIGHT_UNIT' ).
    lo_action->set_edm_name( 'UnassignFreightUnit' ) ##NO_TEXT.


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'FREIGHT_ORDER_TYPE' ).
    lo_parameter->set_is_binding_parameter( ).

    lo_parameter = lo_action->create_parameter( 'FREIGHT_UNITS' ).
    lo_parameter->set_edm_name( '_FreightUnits' ) ##NO_TEXT.
    lo_parameter->set_complex_type( 'D_FREIGHT_UNIT_UNASSIGN_PA' ).
    lo_parameter->set_is_collection( ).

  ENDMETHOD.


  METHOD define_primitive_types.

    DATA lo_primitive_type TYPE REF TO /iwbep/if_v4_pm_prim_type.


    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'TRANSPORTATION_ORDER'
                            iv_element             = VALUE tys_types_for_prim_types-transportation_order( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'TRANSPORTATION_ORDER_ITEM'
                            iv_element             = VALUE tys_types_for_prim_types-transportation_order_item( ) ).
    lo_primitive_type->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'TRANSPORTATION_ORDER_STOP'
                            iv_element             = VALUE tys_types_for_prim_types-transportation_order_stop( ) ).
    lo_primitive_type->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'TRANSPORTATION_ORDER_TYPE'
                            iv_element             = VALUE tys_types_for_prim_types-transportation_order_type( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'TRANSP_ORD_EVENT_CODE'
                            iv_element             = VALUE tys_types_for_prim_types-transp_ord_event_code( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'TRANSP_ORD_EVT_ACTUAL_DATE'
                            iv_element             = VALUE tys_types_for_prim_types-transp_ord_evt_actual_date( ) ).
    lo_primitive_type->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'TRANSP_ORD_EVT_ESTIMATED_D'
                            iv_element             = VALUE tys_types_for_prim_types-transp_ord_evt_estimated_d( ) ).
    lo_primitive_type->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.

  ENDMETHOD.
ENDCLASS.
