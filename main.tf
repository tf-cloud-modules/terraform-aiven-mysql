resource "aiven_mysql" "this" {
  count                   = var.create ? 1 : 0
  cloud_name              = var.cloud_name
  maintenance_window_dow  = var.maintenance_window_dow
  maintenance_window_time = var.maintenance_window_time
  plan                    = var.plan
  project                 = var.project
  project_vpc_id          = var.project_vpc_id
  static_ips              = var.static_ips
  service_name            = var.service_name
  termination_protection  = var.termination_protection

  mysql_user_config {
    binlog_retention_period = var.binlog_retention_period
    ip_filter               = var.ip_filter
    mysql_version           = var.mysql_version
    project_to_fork_from    = var.project_to_fork_from
    recovery_target_time    = var.recovery_target_time
    service_to_fork_from    = var.service_to_fork_from

    migration {
      dbname     = var.migration_dbname
      host       = var.migration_host
      ignore_dbs = var.migration_ignore_dbs
      method     = var.migration_method
      password   = var.migration_password
      port       = var.migration_port
      ssl        = var.migration_ssl
      username   = var.migration_username
    }

    public_access {
      prometheus = var.public_access_prometheus
      mysql      = var.public_access_mysql
      mysqlx     = var.public_access_mysqlx
    }

    private_access {
      prometheus = var.private_access_prometheus
      mysql      = var.private_access_mysql
      mysqlx     = var.private_access_mysqlx
    }

    privatelink_access {
      prometheus = var.privatelink_prometheus
      mysql      = var.privatelink_mysql
      mysqlx     = var.privatelink_mysqlx
    }
  }

  dynamic "tag" {
    for_each = var.tags
    content {
      key   = lookup(service_integrations.value, "key", null)
      value = lookup(service_integrations.value, "value", null)
    }
  }

  lifecycle {
    # We are ignoring a migration block to it's one-off nature.
    ignore_changes = [mysql_user_config["migration"]]
  }
}