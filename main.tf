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

    mysql {
      connect_timeout                  = var.connect_timeout
      default_time_zone                = var.default_time_zone
      group_concat_max_len             = var.group_concat_max_len
      information_schema_stats_expiry  = var.information_schema_stats_expiry
      innodb_change_buffer_max_size    = var.innodb_change_buffer_max_size
      innodb_flush_neighbors           = var.innodb_flush_neighbors
      innodb_ft_min_token_size         = var.innodb_ft_min_token_size
      innodb_ft_server_stopword_table  = var.innodb_ft_server_stopword_table
      innodb_lock_wait_timeout         = var.innodb_lock_wait_timeout
      innodb_log_buffer_size           = var.innodb_log_buffer_size
      innodb_online_alter_log_max_size = var.innodb_online_alter_log_max_size
      innodb_print_all_deadlocks       = var.innodb_print_all_deadlocks
      innodb_read_io_threads           = var.innodb_read_io_threads
      innodb_rollback_on_timeout       = var.innodb_rollback_on_timeout
      innodb_thread_concurrency        = var.innodb_thread_concurrency
      innodb_write_io_threads          = var.innodb_write_io_threads
      interactive_timeout              = var.interactive_timeout
      internal_tmp_mem_storage_engine  = var.internal_tmp_mem_storage_engine
      long_query_time                  = var.long_query_time
      max_allowed_packet               = var.max_allowed_packet
      max_heap_table_size              = var.max_heap_table_size
      net_buffer_length                = var.net_buffer_length
      net_read_timeout                 = var.net_read_timeout
      net_write_timeout                = var.net_write_timeout
      slow_query_log                   = var.slow_query_log
      sort_buffer_size                 = var.sort_buffer_size
      sql_mode                         = var.sql_mode
      sql_require_primary_key          = var.sql_require_primary_key
      tmp_table_size                   = var.tmp_table_size
      wait_timeout                     = var.wait_timeout
    }
  }

  dynamic "tag" {
    for_each = var.tags
    content {
      key   = lookup(tag.value, "key", null)
      value = lookup(tag.value, "value", null)
    }
  }

  lifecycle {
    # We are ignoring a migration block to it's one-off nature.
    ignore_changes = [mysql_user_config["migration"]]
  }
}