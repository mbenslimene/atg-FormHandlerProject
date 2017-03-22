
-- the source for this section is 
-- drop_dcs_content_mgmt_ddl.sql



drop table dcs_wcm_article_rltd_ctgy;
drop table dcs_wcm_article_rltd_prod;
drop table dcs_wcm_media_rltd_ctgy;
drop table dcs_wcm_media_rltd_prod;





-- the source for this section is 
-- drop_order_returns_ddl.sql



drop table csr_item_adj;
drop table csr_nonreturn_adj;
drop table csr_promo_adjust;
drop table csr_exch_opromos;
drop table csr_exch_ipromos;
drop table csr_sc_exch_method;
drop table csr_cc_exch_method;
drop table csr_exch_methods;
drop table csr_exch_method;
drop table csr_exch_items;
drop table csr_exch_item;
drop table csr_return_fee;
drop table csr_exch_item_disp;
drop table csr_exch_reasons;
drop table csr_exch_cmts;
drop table csr_exch;





-- the source for this section is 
-- drop_custom_catalog_reporting.sql



drop view drpt_category;
drop view drpt_products;





-- the source for this section is 
-- drop_order_markers_ddl.sql



drop table dcspp_gwp_item_markers;
drop table dcspp_commerce_item_markers;
drop table dcs_gwp_order_markers;
drop table dcs_order_markers;





-- the source for this section is 
-- drop_priceLists_ddl.sql



drop table dcs_plfol_chld;
drop table dcs_child_fol_pl;
drop table dcs_gen_fol_pl;
drop table dcs_price_level;
drop table dcs_price_levels;
drop table dcs_price;
drop table dcs_complex_price;
drop table dcs_price_list;





-- the source for this section is 
-- drop_claimable_ddl.sql



drop table dcspp_batch_claimable;
drop table dcspp_coupon_batch;
drop table dcspp_coupon_info;
drop table dcspp_coupon;
drop table dcspp_cp_folder;
drop table dcs_storecred_clm;
drop table dcspp_giftcert;
drop table dcspp_claimable;





-- the source for this section is 
-- drop_dcs_mappers.sql



drop table dcs_promo_grntd;
drop table dcs_promo_rvkd;
drop table dcs_ord_merge_evt;
drop table dcs_prom_used_evt;
drop table dcs_submt_ord_evt;
drop table dcs_cart_event;





-- the source for this section is 
-- drop_order_ddl.sql



drop table dcspp_appeasement_refund_sc;
drop table dcspp_appeasement_refund_cc;
drop table dcspp_appeasement_refunds;
drop table dcspp_appeasement_refund;
drop table dcspp_appeasement_reasons;
drop table dcspp_appeasement;
drop table dbcpp_pmt_req;
drop table dbcpp_ccorder_rel;
drop table dbcpp_ccship_rel;
drop table dbcpp_ccitem_rel;
drop table dbcpp_order_cc;
drop table dbcpp_cost_center;
drop table dbcpp_invoice_req;
drop table dbcpp_appr_msgs;
drop table dbcpp_apprsysmsgs;
drop table dbcpp_authapprids;
drop table dbcpp_approverids;
drop table dcspp_schd_errmsg;
drop table dcspp_sched_error;
drop table dcspp_scherr_aux;
drop table dbcpp_sched_clone;
drop table dbcpp_sched_order;
drop table dcspp_manual_adj;
drop table dcspp_quote_info;
drop table dcspp_order_adj;
drop table dcspp_det_range;
drop table dcspp_det_price;
drop table dcspp_itmprice_det;
drop table dcspp_shipitem_tax;
drop table dcspp_ntaxshipitem;
drop table dcspp_taxshipitem;
drop table dcspp_shipitem_sub;
drop table dcspp_price_adjust;
drop table dcspp_amtinfo_adj;
drop table dcspp_ship_price;
drop table dcspp_tax_price;
drop table dcspp_item_price;
drop table dcspp_order_price;
drop table dcspp_amount_info;
drop table dcspp_payorder_rel;
drop table dcspp_payship_rel;
drop table dcspp_payitem_rel;
drop table dcspp_rel_range;
drop table dcspp_shipitem_rel;
drop table dcspp_cred_status;
drop table dcspp_debit_status;
drop table dcspp_auth_status;
drop table dcspp_sc_status;
drop table dcspp_gc_status;
drop table dcspp_cc_status;
drop table dcspp_pay_status;
drop table dcspp_bill_addr;
drop table dcspp_token_crdt_crd;
drop table dcspp_credit_card;
drop table dcspp_store_cred;
drop table dcspp_gift_cert;
drop table dcspp_item_ci;
drop table dcspp_config_subsku_item;
drop table dcspp_subsku_item;
drop table dcspp_config_item;
drop table dcspp_pay_inst;
drop table dcspp_sg_hand_inst;
drop table dcspp_gift_inst;
drop table dcspp_hand_inst;
drop table dcspp_ship_addr;
drop table dcspp_isp_ship_grp;
drop table dcspp_ele_ship_grp;
drop table dcspp_hrd_ship_grp;
drop table dcspp_ship_inst;
drop table dcspp_order_rel;
drop table dcspp_order_item;
drop table dcspp_order_pg;
drop table dcspp_order_sg;
drop table dcspp_order_inst;
drop table dcspp_rel_orders;
drop table dcspp_relationship;
drop table dcspp_item;
drop table dcspp_pay_group;
drop table dcspp_ship_group;
drop table dcspp_order;





-- the source for this section is 
-- drop_user_giftlist_ddl.sql



drop table dcs_user_otherlist;
drop table dcs_user_giftlist;
drop table dcs_user_wishlist;
drop table dcs_giftlist_item;
drop table dcs_giftitem;
drop table dcs_giftinst;
drop table dcs_giftlist;





-- the source for this section is 
-- drop_user_promotion_ddl.sql



drop table dcs_usr_usedpromo;
drop table dcs_promo_st_cpn;
drop table dcs_usr_actvpromo;
drop table dcs_usr_promostat;





-- the source for this section is 
-- drop_promotion_ddl.sql



drop table dcs_incl_promotions;
drop table dcs_excl_promotions;
drop table dcs_upsell_prods;
drop table dcs_prm_cls_vals;
drop table dcs_prm_tpl_vals;
drop table dcs_prm_site_grps;
drop table dcs_prm_sites;
drop table dcs_prm_cls_qlf;
drop table dcs_close_qualif;
drop table dcs_upsell_action;
drop table dcs_promo_upsell;
drop table dcs_discount_promo;
drop table dcs_promo_payment;
drop table dcs_promo_media;
drop table dcs_promotion;
drop table dcs_excl_stacking_rules;
drop table dcs_stacking_rule;
drop table dcs_prm_folder;





-- the source for this section is 
-- drop_inventory_ddl.sql



drop table dcs_inv_atp;
drop table dcs_inventory;





-- the source for this section is 
-- drop_location_ddl.sql



drop table dcs_location_rltd_article;
drop table dcs_location_rltd_media;
drop table dcs_location_addr;
drop table dcs_location_store;
drop table dcs_loc_site_grps;
drop table dcs_location_sites;
drop table dcs_location;





-- the source for this section is 
-- drop_custom_catalog_ddl.sql



drop table dcs_invalidated_sku_ids;
drop table dcs_invalidated_prd_ids;
drop table dcs_cat_dynprd;
drop table dcs_sku_sites;
drop table dcs_product_sites;
drop table dcs_category_sites;
drop table dcs_catalog_sites;
drop table dcs_sku_catalogs;
drop table dcs_prd_catalogs;
drop table dcs_cat_catalogs;
drop table dcs_prd_anc_cats;
drop table dcs_prd_prnt_cats;
drop table dcs_cat_prnt_cats;
drop table dcs_cat_anc_cats;
drop table dcs_ctlg_anc_cats;
drop table dcs_ind_anc_ctlgs;
drop table dcs_dir_anc_ctlgs;
drop table dcs_catfol_sites;
drop table dcs_catfol_chld;
drop table dcs_child_fol_cat;
drop table dcs_gen_fol_cat;
drop table dcs_skuinfo_rplc;
drop table dcs_sku_skuinfo;
drop table dcs_prdinfo_anc;
drop table dcs_prdinfo_rdprd;
drop table dcs_prd_prdinfo;
drop table dcs_catinfo_anc;
drop table dcs_cat_catinfo;
drop table dcs_cat_subroots;
drop table dcs_cat_subcats;
drop table dcs_sku_info;
drop table dcs_product_info;
drop table dcs_category_info;
drop table dcs_root_subcats;
drop table dcs_allroot_cats;
drop table dcs_root_cats;
drop table dcs_catalog;





-- the source for this section is 
-- drop_product_catalog_ddl.sql



drop table dcs_product_rltd_article;
drop table dcs_product_rltd_media;
drop table dbc_measurement;
drop table dbc_manufacturer;
drop table dcs_foreign_cat;
drop table dcs_config_opt;
drop table dcs_conf_options;
drop table dcs_config_prop;
drop table dcs_config_sku;
drop table dcs_sku_conf;
drop table dcs_sku_replace;
drop table dcs_sku_aux_media;
drop table dcs_sku_media;
drop table dcs_sku_bndllnk;
drop table dcs_sku_link;
drop table dcs_sku_attr;
drop table dcs_prd_ancestors;
drop table dcs_prd_upslprd;
drop table dcs_prd_rltdprd;
drop table dcs_prd_groups;
drop table dcs_prd_skuattr;
drop table dcs_prd_chldsku;
drop table dcs_prd_aux_media;
drop table dcs_prd_media;
drop table dcs_prd_keywrds;
drop table dcs_cat_aux_media;
drop table dcs_cat_media;
drop table dcs_cat_keywrds;
drop table dcs_cat_rltdcat;
drop table dcs_cat_ancestors;
drop table dcs_cat_chldcat;
drop table dcs_cat_chldprd;
drop table dcs_cat_groups;
drop table dcs_sku;
drop table dcs_product_acl;
drop table dcs_product;
drop table dcs_category_acl;
drop table dcs_category;
drop table dcs_media_txt;
drop table dcs_media_bin;
drop table dcs_media_ext;
drop table dcs_media;
drop table dcs_folder;





-- the source for this section is 
-- drop_organization_ddl.sql



drop table dcs_org_address;
drop table dbc_org_prefvndr;
drop table dbc_org_payment;
drop table dbc_org_costctr;
drop table dbc_org_approver;
drop table dbc_org_contact;
drop table dbc_organization;





-- the source for this section is 
-- drop_commerce_user.sql



drop table dcs_user_favstores;
drop table dbc_buyer_plist;
drop table dbc_buyer_prefvndr;
drop table dbc_buyer_approver;
drop table dbc_buyer_costctr;
drop table dps_usr_creditcard;
drop table dcs_user;
drop table dbc_cost_center;
drop table dps_credit_card;





-- the source for this section is 
-- drop_commerce_site_ddl.sql



drop table dcs_site;





-- the source for this section is 
-- drop_contracts_ddl.sql



drop table dbc_contract_term;
drop table dbc_contract;





-- the source for this section is 
-- drop_invoice_ddl.sql



drop table dbc_invoice;
drop table dbc_inv_pmt_terms;
drop table dbc_inv_delivery;





-- the source for this section is 
-- drop_dcs_backing_maps_ddl.sql



drop table dcs_sku_dyn_prop_map_long;
drop table dcs_sku_dyn_prop_map_double;
drop table dcs_sku_dyn_prop_map_big_str;
drop table dcs_sku_dyn_prop_map_str;
drop table dcs_dyn_prop_map_long;
drop table dcs_dyn_prop_map_double;
drop table dcs_dyn_prop_map_big_str;
drop table dcs_dyn_prop_map_str;





-- the source for this section is 
-- drop_abandoned_order_ddl.sql



drop table drpt_session_ord;
drop table drpt_conv_order;
drop table dcs_user_abandoned;
drop table dcspp_ord_abandon;





-- the source for this section is 
-- drop_abandoned_order_views.sql



drop view drpt_tns_abndn_ord;
drop view drpt_abandon_ord;




