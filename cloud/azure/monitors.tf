module "apimanagement" {
  source = "./apimanagement"

  environment = "${var.environment}"
  message     = "${var.message}"
  delay       = "${var.delay}"

  filter_tags_use_defaults = "${var.filter_tags_use_defaults}"
  filter_tags_custom       = "${var.filter_tags_custom}"

  status_silenced                          = "${var.apimanagement_status_silenced}"
  failed_requests_silenced                 = "${var.apimanagement_failed_requests_silenced}"
  failed_requests_threshold_critical       = "${var.apimanagement_failed_requests_threshold_critical}"
  failed_requests_threshold_warning        = "${var.apimanagement_failed_requests_threshold_warning}"
  other_requests_silenced                  = "${var.apimanagement_other_requests_silenced}"
  other_requests_threshold_critical        = "${var.apimanagement_other_requests_threshold_critical}"
  other_requests_threshold_warning         = "${var.apimanagement_other_requests_threshold_warning}"
  successful_requests_silenced             = "${var.apimanagement_successful_requests_silenced}"
  successful_requests_threshold_critical   = "${var.apimanagement_successful_requests_threshold_critical}"
  successful_requests_threshold_warning    = "${var.apimanagement_successful_requests_threshold_warning}"
  unauthorized_requests_silenced           = "${var.apimanagement_unauthorized_requests_silenced}"
  unauthorized_requests_threshold_critical = "${var.apimanagement_unauthorized_requests_threshold_critical}"
  unauthorized_requests_threshold_warning  = "${var.apimanagement_unauthorized_requests_threshold_warning}"
}

module "appservices" {
  source = "./app-services"

  environment = "${var.environment}"
  message     = "${var.message}"
  delay       = "${var.delay}"

  filter_tags_use_defaults = "${var.filter_tags_use_defaults}"
  filter_tags_custom       = "${var.filter_tags_custom}"

  http_successful_requests_silenced           = "${var.appservices_http_successful_requests_silenced}"
  http_successful_requests_threshold_critical = "${var.appservices_http_successful_requests_threshold_critical}"
  http_successful_requests_threshold_warning  = "${var.appservices_http_successful_requests_threshold_warning}"
  http_5xx_requests_silenced                  = "${var.appservices_http_5xx_requests_silenced}"
  http_5xx_requests_threshold_critical        = "${var.appservices_http_5xx_requests_threshold_critical}"
  http_5xx_requests_threshold_warning         = "${var.appservices_http_5xx_requests_threshold_warning}"
  http_4xx_requests_silenced                  = "${var.appservices_http_4xx_requests_silenced}"
  http_4xx_requests_threshold_critical        = "${var.appservices_http_4xx_requests_threshold_critical}"
  http_4xx_requests_threshold_warning         = "${var.appservices_http_4xx_requests_threshold_warning}"
  memory_usage_silenced                       = "${var.appservices_memory_usage_silenced}"
  memory_usage_threshold_critical             = "${var.appservices_memory_usage_threshold_critical}"
  memory_usage_threshold_warning              = "${var.appservices_memory_usage_threshold_warning}"
  response_time_silenced                      = "${var.appservices_response_time_silenced}"
  response_time_threshold_critical            = "${var.appservices_response_time_threshold_critical}"
  response_time_threshold_warning             = "${var.appservices_response_time_threshold_warning}"
}

module "eventhub" {
  source = "./eventhub"

  environment = "${var.environment}"
  message     = "${var.message}"
  delay       = "${var.delay}"

  filter_tags_use_defaults = "${var.filter_tags_use_defaults}"
  filter_tags_custom       = "${var.filter_tags_custom}"

  status_silenced                        = "${var.eventhub_status_silenced}"
  errors_rate_silenced                   = "${var.eventhub_errors_rate_silenced}"
  errors_rate_thresold_critical          = "${var.eventhub_errors_rate_thresold_critical}"
  errors_rate_thresold_warning           = "${var.eventhub_errors_rate_thresold_warning}"
  failed_requests_rate_silenced          = "${var.eventhub_failed_requests_rate_silenced}"
  failed_requests_rate_thresold_critical = "${var.eventhub_failed_requests_rate_thresold_critical}"
  failed_requests_rate_thresold_warning  = "${var.eventhub_failed_requests_rate_thresold_warning}"
}

module "iothub" {
  source = "./iothubs"

  environment = "${var.environment}"
  message     = "${var.message}"
  delay       = "${var.delay}"

  filter_tags = "${var.non_taggable_filter_tags}"

  status_silenced                                  = "${var.iothub_status_silenced}"
  total_devices_silenced                           = "${var.iothub_total_devices_silenced}"
  too_many_d2c_telemetry_ingress_nosent_silenced   = "${var.iothub_too_many_d2c_telemetry_ingress_nosent_silenced}"
  dropped_d2c_telemetry_egress_silenced            = "${var.iothub_dropped_d2c_telemetry_egress_silenced}"
  dropped_d2c_telemetry_egress_threshold_critical  = "${var.iothub_dropped_d2c_telemetry_egress_threshold_critical}"
  dropped_d2c_telemetry_egress_threshold_warning   = "${var.iothub_dropped_d2c_telemetry_egress_threshold_warning}"
  failed_c2d_methods_rate_silenced                 = "${var.iothub_failed_c2d_methods_rate_silenced}"
  failed_c2d_methods_rate_threshold_critical       = "${var.iothub_failed_c2d_methods_rate_threshold_critical}"
  failed_c2d_methods_rate_threshold_warning        = "${var.iothub_failed_c2d_methods_rate_threshold_warning}"
  failed_c2d_twin_read_rate_silenced               = "${var.iothub_failed_c2d_twin_read_rate_silenced}"
  failed_c2d_twin_read_rate_threshold_critical     = "${var.iothub_failed_c2d_twin_read_rate_threshold_critical}"
  failed_c2d_twin_read_rate_threshold_warning      = "${var.iothub_failed_c2d_twin_read_rate_threshold_warning}"
  failed_c2d_twin_update_rate_silenced             = "${var.iothub_failed_c2d_twin_update_rate_silenced}"
  failed_c2d_twin_update_rate_threshold_critical   = "${var.iothub_failed_c2d_twin_update_rate_threshold_critical}"
  failed_c2d_twin_update_rate_threshold_warning    = "${var.iothub_failed_c2d_twin_update_rate_threshold_warning}"
  failed_d2c_twin_read_rate_silenced               = "${var.iothub_failed_d2c_twin_read_rate_silenced}"
  failed_d2c_twin_read_rate_threshold_critical     = "${var.iothub_failed_d2c_twin_read_rate_threshold_critical}"
  failed_d2c_twin_read_rate_threshold_warning      = "${var.iothub_failed_d2c_twin_read_rate_threshold_warning}"
  failed_d2c_twin_update_rate_silenced             = "${var.iothub_failed_d2c_twin_update_rate_silenced}"
  failed_d2c_twin_update_rate_threshold_critical   = "${var.iothub_failed_d2c_twin_update_rate_threshold_critical}"
  failed_d2c_twin_update_rate_threshold_warning    = "${var.iothub_failed_d2c_twin_update_rate_threshold_warning}"
  failed_jobs_rate_silenced                        = "${var.iothub_failed_jobs_rate_silenced}"
  failed_jobs_rate_threshold_critical              = "${var.iothub_failed_jobs_rate_threshold_critical}"
  failed_jobs_rate_threshold_warning               = "${var.iothub_failed_jobs_rate_threshold_warning}"
  failed_listjobs_rate_silenced                    = "${var.iothub_failed_listjobs_rate_silenced}"
  failed_listjobs_rate_threshold_critical          = "${var.iothub_failed_listjobs_rate_threshold_critical}"
  failed_listjobs_rate_threshold_warning           = "${var.iothub_failed_listjobs_rate_threshold_warning}"
  failed_queryjobs_rate_silenced                   = "${var.iothub_failed_queryjobs_rate_silenced}"
  failed_queryjobs_rate_threshold_critical         = "${var.iothub_failed_queryjobs_rate_threshold_critical}"
  failed_queryjobs_rate_threshold_warning          = "${var.iothub_failed_queryjobs_rate_threshold_warning}"
  fallback_d2c_telemetry_egress_silenced           = "${var.iothub_fallback_d2c_telemetry_egress_silenced}"
  fallback_d2c_telemetry_egress_threshold_critical = "${var.iothub_fallback_d2c_telemetry_egress_threshold_critical}"
  fallback_d2c_telemetry_egress_threshold_warning  = "${var.iothub_fallback_d2c_telemetry_egress_threshold_warning}"
  invalid_d2c_telemetry_egress_silenced            = "${var.iothub_invalid_d2c_telemetry_egress_silenced}"
  invalid_d2c_telemetry_egress_threshold_critical  = "${var.iothub_invalid_d2c_telemetry_egress_threshold_critical}"
  invalid_d2c_telemetry_egress_threshold_warning   = "${var.iothub_invalid_d2c_telemetry_egress_threshold_warning}"
  orphaned_d2c_telemetry_egress_silenced           = "${var.iothub_orphaned_d2c_telemetry_egress_silenced}"
  orphaned_d2c_telemetry_egress_threshold_critical = "${var.iothub_orphaned_d2c_telemetry_egress_threshold_critical}"
  orphaned_d2c_telemetry_egress_threshold_warning  = "${var.iothub_orphaned_d2c_telemetry_egress_threshold_warning}"
}

module "redis" {
  source = "./redis"

  environment = "${var.environment}"
  message     = "${var.message}"
  delay       = "${var.delay}"

  filter_tags_use_defaults = "${var.filter_tags_use_defaults}"
  filter_tags_custom       = "${var.filter_tags_custom}"

  status_silenced                           = "${var.redis_status_silenced}"
  evictedkeys_limit_silenced                = "${var.redis_evictedkeys_limit_silenced}"
  evictedkeys_limit_threshold_critical      = "${var.redis_evictedkeys_limit_threshold_critical}"
  evictedkeys_limit_threshold_warning       = "${var.redis_evictedkeys_limit_threshold_warning}"
  percent_processor_time_silenced           = "${var.redis_percent_processor_time_silenced}"
  percent_processor_time_threshold_critical = "${var.redis_percent_processor_time_threshold_critical}"
  percent_processor_time_threshold_warning  = "${var.redis_percent_processor_time_threshold_warning}"
  server_load_rate_silenced                 = "${var.redis_server_load_rate_silenced}"
  server_load_rate_threshold_critical       = "${var.redis_server_load_rate_threshold_critical}"
  server_load_rate_threshold_warning        = "${var.redis_server_load_rate_threshold_warning}"
}

module "sqldatabase" {
  source = "./sql-database"

  environment = "${var.environment}"
  message     = "${var.message}"
  delay       = "${var.delay}"

  filter_tags_use_defaults = "${var.filter_tags_use_defaults}"
  filter_tags_custom       = "${var.filter_tags_custom}"

  cpu_silenced                 = "${var.sqldatabase_cpu_silenced}"
  cpu_threshold_critical       = "${var.sqldatabase_cpu_threshold_critical}"
  cpu_threshold_warning        = "${var.sqldatabase_cpu_threshold_warning}"
  deadlock_silenced            = "${var.sqldatabase_deadlock_silenced}"
  deadlock_threshold_critical  = "${var.sqldatabase_deadlock_threshold_critical}"
  diskspace_silenced           = "${var.sqldatabase_diskspace_silenced}"
  diskspace_threshold_critical = "${var.sqldatabase_diskspace_threshold_critical}"
  diskspace_threshold_warning  = "${var.sqldatabase_diskspace_threshold_warning}"
  dtu_silenced                 = "${var.sqldatabase_dtu_silenced}"
  dtu_threshold_critical       = "${var.sqldatabase_dtu_threshold_critical}"
  dtu_threshold_warning        = "${var.sqldatabase_dtu_threshold_warning}"
}

module "storage" {
  source = "./storage"

  environment = "${var.environment}"
  message     = "${var.message}"
  delay       = "${var.delay}"

  filter_tags_use_defaults = "${var.filter_tags_use_defaults}"
  filter_tags_custom       = "${var.filter_tags_custom}"

  authorization_error_requests_silenced           = "${var.storage_authorization_error_requests_silenced}"
  authorization_error_requests_threshold_critical = "${var.storage_authorization_error_requests_threshold_critical}"
  authorization_error_requests_threshold_warning  = "${var.storage_authorization_error_requests_threshold_warning}"
  availability_silenced                           = "${var.storage_availability_silenced}"
  availability_threshold_critical                 = "${var.storage_availability_threshold_critical}"
  availability_threshold_warning                  = "${var.storage_availability_threshold_warning}"
  client_other_error_requests_silenced            = "${var.storage_client_other_error_requests_silenced}"
  client_other_error_requests_threshold_critical  = "${var.storage_client_other_error_requests_threshold_critical}"
  client_other_error_requests_threshold_warning   = "${var.storage_client_other_error_requests_threshold_warning}"
  latency_silenced                                = "${var.storage_latency_silenced}"
  latency_threshold_critical                      = "${var.storage_latency_threshold_critical}"
  latency_threshold_warning                       = "${var.storage_latency_threshold_warning}"
  network_error_requests_silenced                 = "${var.storage_network_error_requests_silenced}"
  network_error_requests_threshold_critical       = "${var.storage_network_error_requests_threshold_critical}"
  network_error_requests_threshold_warning        = "${var.storage_network_error_requests_threshold_warning}"
  server_other_error_requests_silenced            = "${var.storage_server_other_error_requests_silenced}"
  server_other_error_requests_threshold_critical  = "${var.storage_server_other_error_requests_threshold_critical}"
  server_other_error_requests_threshold_warning   = "${var.storage_server_other_error_requests_threshold_warning}"
  successful_requests_silenced                    = "${var.storage_successful_requests_silenced}"
  successful_requests_threshold_critical          = "${var.storage_successful_requests_threshold_critical}"
  successful_requests_threshold_warning           = "${var.storage_successful_requests_threshold_warning}"
  throttling_error_requests_silenced              = "${var.storage_throttling_error_requests_silenced}"
  throttling_error_requests_threshold_critical    = "${var.storage_throttling_error_requests_threshold_critical}"
  throttling_error_requests_threshold_warning     = "${var.storage_throttling_error_requests_threshold_warning}"
  timeout_error_requests_silenced                 = "${var.storage_timeout_error_requests_silenced}"
  timeout_error_requests_threshold_critical       = "${var.storage_timeout_error_requests_threshold_critical}"
  timeout_error_requests_threshold_warning        = "${var.storage_timeout_error_requests_threshold_warning}"
}

module "streamanalytics" {
  source = "./stream-analytics"

  environment = "${var.environment}"
  message     = "${var.message}"
  delay       = "${var.delay}"

  filter_tags_use_defaults = "${var.filter_tags_use_defaults}"
  filter_tags_custom       = "${var.filter_tags_custom}"

  conversion_errors_silenced                  = "${var.streamanalytics_conversion_errors_silenced}"
  conversion_errors_threshold_critical        = "${var.streamanalytics_conversion_errors_threshold_critical}"
  conversion_errors_threshold_warning         = "${var.streamanalytics_conversion_errors_threshold_warning}"
  failed_function_requests_silenced           = "${var.streamanalytics_failed_function_requests_silenced}"
  failed_function_requests_threshold_critical = "${var.streamanalytics_failed_function_requests_threshold_critical}"
  failed_function_requests_threshold_warning  = "${var.streamanalytics_failed_function_requests_threshold_warning}"
  runtime_errors_silenced                     = "${var.streamanalytics_runtime_errors_silenced}"
  runtime_errors_threshold_critical           = "${var.streamanalytics_runtime_errors_threshold_critical}"
  runtime_errors_threshold_warning            = "${var.streamanalytics_runtime_errors_threshold_warning}"
  su_utilization_silenced                     = "${var.streamanalytics_su_utilization_silenced}"
  su_utilization_threshold_critical           = "${var.streamanalytics_su_utilization_threshold_critical}"
  su_utilization_threshold_warning            = "${var.streamanalytics_su_utilization_threshold_warning}"
}
