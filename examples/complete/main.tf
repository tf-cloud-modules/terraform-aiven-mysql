module "mysql" {
  source       = "../.."
  project      = var.project
  service_name = "test"
  tags = [
    {
      key   = "env"
      value = "test"
    }
  ]
}

module "database" {
  source        = "../../modules/database"
  project       = module.mysql.project
  service_name  = module.mysql.service_name
  database_name = "test"
}

module "user" {
  source       = "../../modules/user"
  project      = module.mysql.project
  service_name = module.mysql.service_name
  username     = "test"
}