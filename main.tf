resource "aiven_mysql" "this" {
  count                   = var.create ? 1 : 0
  cloud_name              = var.cloud_name
  cmk_id                  = var.cmk_id
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
    ip_filter_string        = var.ip_filter_string
    mysql_version           = var.mysql_version
    project_to_fork_from    = var.project_to_fork_from
    recovery_target_time    = var.recovery_target_time
    service_log             = var.service_log
    service_to_fork_from    = var.service_to_fork_from

    dynamic "ip_filter_object" {
      for_each = var.ip_filter_object
      content {
        network     = lookup(ip_filter_object.value, "network")
        description = lookup(ip_filter_object.value, "description", null)
      }
    }

    dynamic "migration" {
      for_each = var.migration
      content {
        dbname                  = lookup(migration.value, "dbname", null)
        dump_tool               = lookup(migration.value, "dump_tool", null)
        host                    = lookup(migration.value, "host", null)
        ignore_dbs              = lookup(migration.value, "ignore_dbs", null)
        ignore_roles            = lookup(migration.value, "ignore_roles", null)
        method                  = lookup(migration.value, "method", null)
        password                = lookup(migration.value, "password", null)
        port                    = lookup(migration.value, "port", null)
        reestablish_replication = lookup(migration.value, "reestablish_replication", null)
        ssl                     = lookup(migration.value, "ssl", null)
        username                = lookup(migration.value, "username", null)
      }
    }

    dynamic "mysql_incremental_backup" {
      for_each = var.mysql_incremental_backup
      content {
        enabled                   = lookup(mysql_incremental_backup.value, "enabled", null)
        full_backup_week_schedule = lookup(mysql_incremental_backup.value, "full_backup_week_schedule", null)
      }
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
      automatic_sp_privileges                           = var.automatic_sp_privileges
      collation_server                                  = var.collation_server
      connect_timeout                                   = var.connect_timeout
      default_time_zone                                 = var.default_time_zone
      div_precision_increment                           = var.div_precision_increment
      end_markers_in_json                               = var.end_markers_in_json
      eq_range_index_dive_limit                         = var.eq_range_index_dive_limit
      event_scheduler                                   = var.event_scheduler
      group_concat_max_len                              = var.group_concat_max_len
      information_schema_stats_expiry                   = var.information_schema_stats_expiry
      innodb_adaptive_hash_index                        = var.innodb_adaptive_hash_index
      innodb_change_buffer_max_size                     = var.innodb_change_buffer_max_size
      innodb_flush_neighbors                            = var.innodb_flush_neighbors
      innodb_ft_cache_size                              = var.innodb_ft_cache_size
      innodb_ft_enable_stopword                         = var.innodb_ft_enable_stopword
      innodb_ft_max_token_size                          = var.innodb_ft_max_token_size
      innodb_ft_min_token_size                          = var.innodb_ft_min_token_size
      innodb_ft_num_word_optimize                       = var.innodb_ft_num_word_optimize
      innodb_ft_result_cache_limit                      = var.innodb_ft_result_cache_limit
      innodb_ft_server_stopword_table                   = var.innodb_ft_server_stopword_table
      innodb_ft_sort_pll_degree                         = var.innodb_ft_sort_pll_degree
      innodb_ft_total_cache_size                        = var.innodb_ft_total_cache_size
      innodb_ft_user_stopword_table                     = var.innodb_ft_user_stopword_table
      innodb_io_capacity                                = var.innodb_io_capacity
      innodb_io_capacity_max                            = var.innodb_io_capacity_max
      innodb_lock_wait_timeout                          = var.innodb_lock_wait_timeout
      innodb_log_buffer_size                            = var.innodb_log_buffer_size
      innodb_max_dirty_pages_pct                        = var.innodb_max_dirty_pages_pct
      innodb_max_dirty_pages_pct_lwm                    = var.innodb_max_dirty_pages_pct_lwm
      innodb_max_purge_lag                              = var.innodb_max_purge_lag
      innodb_max_purge_lag_delay                        = var.innodb_max_purge_lag_delay
      innodb_online_alter_log_max_size                  = var.innodb_online_alter_log_max_size
      innodb_optimize_fulltext_only                     = var.innodb_optimize_fulltext_only
      innodb_print_all_deadlocks                        = var.innodb_print_all_deadlocks
      innodb_read_io_threads                            = var.innodb_read_io_threads
      innodb_rollback_on_timeout                        = var.innodb_rollback_on_timeout
      innodb_sort_buffer_size                           = var.innodb_sort_buffer_size
      innodb_thread_concurrency                         = var.innodb_thread_concurrency
      innodb_write_io_threads                           = var.innodb_write_io_threads
      interactive_timeout                               = var.interactive_timeout
      internal_tmp_mem_storage_engine                   = var.internal_tmp_mem_storage_engine
      log_output                                        = var.log_output
      long_query_time                                   = var.long_query_time
      lower_case_table_names                            = var.lower_case_table_names
      max_allowed_packet                                = var.max_allowed_packet
      max_connections                                   = var.max_connections
      max_execution_time                                = var.max_execution_time
      max_heap_table_size                               = var.max_heap_table_size
      max_seeks_for_key                                 = var.max_seeks_for_key
      max_user_connections                              = var.max_user_connections
      net_buffer_length                                 = var.net_buffer_length
      net_read_timeout                                  = var.net_read_timeout
      net_write_timeout                                 = var.net_write_timeout
      optimizer_prune_level                             = var.optimizer_prune_level
      optimizer_search_depth                            = var.optimizer_search_depth
      optimizer_switch                                  = var.optimizer_switch
      performance_schema_events_statements_history_size = var.performance_schema_events_statements_history_size
      relay_log_space_limit                             = var.relay_log_space_limit
      schema_definition_cache                           = var.schema_definition_cache
      slow_query_log                                    = var.slow_query_log
      sort_buffer_size                                  = var.sort_buffer_size
      sql_mode                                          = var.sql_mode
      sql_require_primary_key                           = var.sql_require_primary_key
      tablespace_definition_cache                       = var.tablespace_definition_cache
      tmp_table_size                                    = var.tmp_table_size
      wait_timeout                                      = var.wait_timeout
      windowing_use_high_precision                      = var.windowing_use_high_precision
    }
  }

  dynamic "service_integrations" {
    for_each = var.service_integrations
    content {
      integration_type    = lookup(service_integrations.value, "integration_type", null)
      source_service_name = lookup(service_integrations.value, "source_service_name", null)
    }
  }

  dynamic "tech_emails" {
    for_each = var.tech_emails
    content {
      email = lookup(tech_emails.value, "email")
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
    ignore_changes = [mysql_user_config[0].migration[0]]
  }
}
