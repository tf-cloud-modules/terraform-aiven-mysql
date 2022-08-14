module "mysql" {
  source       = "../.."
  project      = var.project
  service_name = var.service_name
}

module "database" {
  source        = "../../modules/database"
  project       = module.mysql.project
  service_name  = module.mysql.service_name
  database_name = var.database_name
}

module "user" {
  source       = "../../modules/user"
  project      = module.mysql.project
  service_name = module.mysql.service_name
  username     = var.username
}