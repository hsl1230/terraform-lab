module "vpc" {
  source = "../modules/global"

  env                    = var.var_env
  company                = var.var_company
  var_uc1_public_subnet  = var.uc1_public_subnet
  var_uc1_private_subnet = var.uc1_private_subnet
  var_ue1_public_subnet  = var.ue1_public_subnet
  var_ue1_private_subnet = var.ue1_private_subnet
  var_iap_ip_range       = var.var_iap_ip_range
}

module "uc1" {
  source = "../modules/uc1"

  network_self_link      = module.vpc.out_vpc_self_link
  env                    = var.var_env
  company                = var.var_company
  var_region_name        = "us-central1"
  var_uc1_public_subnet  = var.uc1_public_subnet
  var_uc1_private_subnet = var.uc1_private_subnet
}
