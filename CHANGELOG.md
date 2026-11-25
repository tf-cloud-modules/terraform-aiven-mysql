# Changelog

All notable changes to this module will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Add new `aiven_mysql` resource fields: `cmk_id` (BYOK encryption) and `tech_emails`.
- Add new `mysql_user_config` fields: `service_log`, `ip_filter_string` and the `mysql_incremental_backup` block.
- Add new `mysql_user_config.mysql` settings: `automatic_sp_privileges`, `collation_server`, `div_precision_increment`, `end_markers_in_json`, `eq_range_index_dive_limit`, `event_scheduler`, `innodb_adaptive_hash_index`, `innodb_ft_cache_size`, `innodb_ft_enable_stopword`, `innodb_ft_max_token_size`, `innodb_ft_num_word_optimize`, `innodb_ft_result_cache_limit`, `innodb_ft_sort_pll_degree`, `innodb_ft_total_cache_size`, `innodb_ft_user_stopword_table`, `innodb_io_capacity`, `innodb_io_capacity_max`, `innodb_max_dirty_pages_pct`, `innodb_max_dirty_pages_pct_lwm`, `innodb_max_purge_lag`, `innodb_max_purge_lag_delay`, `innodb_optimize_fulltext_only`, `innodb_sort_buffer_size`, `log_output`, `lower_case_table_names`, `max_connections`, `max_execution_time`, `max_seeks_for_key`, `max_user_connections`, `optimizer_prune_level`, `optimizer_search_depth`, `optimizer_switch`, `performance_schema_events_statements_history_size`, `relay_log_space_limit`, `schema_definition_cache`, `tablespace_definition_cache`, `windowing_use_high_precision`.
- Add `dump_tool`, `ignore_roles` and `reestablish_replication` options to the `migration` block.
- Add `mysql_grants` variable to the `user` submodule.
- Add `maintenance_window_enabled` output.
- Add Russian translation of the README (`README.ru.md`).

### Changed
- Raise aiven/aiven provider lower bound to `>= 4.66.0` (upper bound `< 5.0.0` unchanged). The bound matches the minimal provider version that provides all fields used by the module (the last ones, e.g. `collation_server`, appeared in 4.66.0).

### Fixed
- Fix `mysql_user_config` migration lifecycle `ignore_changes` path for provider v4 syntax (`mysql_user_config[0].migration[0]`).
- Omit unset optional string settings instead of passing empty strings rejected by provider validation.

## [2.0.0] - 2023-03-28

### Changed
- **Breaking:** add aiven/aiven provider v4 support.

## [1.1.2] - 2023-03-28

### Fixed
- Lock provider version.

## [1.1.1] - 2022-10-03

### Changed
- Rework examples to the one-variable approach.

## [1.1.0] - 2022-09-20

### Added
- Add `service_integrations`.

## [1.0.2] - 2022-08-18

### Fixed
- Fix tag section.

## [1.0.1] - 2022-08-14

### Fixed
- Fix typo in README.

## [1.0.0] - 2022-08-14

### Added
- Add `user` and `database` submodules.
- Add `mysql_user_config.mysql` settings.

## [0.4.0] - 2022-08-14

### Added
- Add access blocks (`public_access`, `private_access`, `privatelink_access`).

## [0.3.0] - 2022-08-14

### Added
- Add `migration` block.

## [0.2.0] - 2022-08-14

### Added
- Add `mysql_user_config`.

## [0.1.1] - 2022-08-14

### Changed
- Add usage block to README.

## [0.1.0] - 2022-08-14

- Initial release.

[Unreleased]: https://github.com/tf-cloud-modules/terraform-aiven-mysql/compare/2.0.0...HEAD
[2.0.0]: https://github.com/tf-cloud-modules/terraform-aiven-mysql/compare/1.1.2...2.0.0
[1.1.2]: https://github.com/tf-cloud-modules/terraform-aiven-mysql/compare/1.1.1...1.1.2
[1.1.1]: https://github.com/tf-cloud-modules/terraform-aiven-mysql/compare/1.1.0...1.1.1
[1.1.0]: https://github.com/tf-cloud-modules/terraform-aiven-mysql/compare/1.0.2...1.1.0
[1.0.2]: https://github.com/tf-cloud-modules/terraform-aiven-mysql/compare/1.0.1...1.0.2
[1.0.1]: https://github.com/tf-cloud-modules/terraform-aiven-mysql/compare/1.0.0...1.0.1
[1.0.0]: https://github.com/tf-cloud-modules/terraform-aiven-mysql/compare/0.4.0...1.0.0
[0.4.0]: https://github.com/tf-cloud-modules/terraform-aiven-mysql/compare/0.3.0...0.4.0
[0.3.0]: https://github.com/tf-cloud-modules/terraform-aiven-mysql/compare/0.2.0...0.3.0
[0.2.0]: https://github.com/tf-cloud-modules/terraform-aiven-mysql/compare/0.1.1...0.2.0
[0.1.1]: https://github.com/tf-cloud-modules/terraform-aiven-mysql/compare/0.1.0...0.1.1
[0.1.0]: https://github.com/tf-cloud-modules/terraform-aiven-mysql/releases/tag/0.1.0
