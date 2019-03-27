resource "datadog_monitor" "function_http_5xx_errors_rate" {
  count   = "${var.http_5xx_errors_rate_enabled ? 1 : 0}"
  name    = "[${var.environment}] Function App HTTP 5xx errors too high {{#is_alert}}{{{comparator}}} {{threshold}}% ({{value}}%){{/is_alert}}{{#is_warning}}{{{comparator}}} {{warn_threshold}}% ({{value}}%){{/is_warning}}"
  type    = "metric alert"
  message = "${coalesce(var.http_5xx_errors_rate_message, var.message)}"

  query = <<EOF
    ${var.http_5xx_errors_rate_time_aggregator}(${var.http_5xx_errors_rate_timeframe}): default(
      default(avg:azure.functions.http5xx${module.filter-tags.query_alert} by {resource_group,region,name}.as_rate(), 0) /
      default(avg:azure.functions.function_execution_count${module.filter-tags.query_alert} by {resource_group,region,name}.as_rate(), 1)
    , 0) * 100 > ${var.http_5xx_errors_rate_threshold_critical}
  EOF

  evaluation_delay = "${var.evaluation_delay}"
  new_host_delay   = "${var.new_host_delay}"

  thresholds {
    warning  = "${var.http_5xx_errors_rate_threshold_warning}"
    critical = "${var.http_5xx_errors_rate_threshold_critical}"
  }

  silenced = "${var.http_5xx_errors_rate_silenced}"

  notify_no_data      = false
  renotify_interval   = 0
  require_full_window = false
  timeout_h           = 1
  include_tags        = true

  tags = ["env:${var.environment}", "type:cloud", "provider:azure", "resource:azure_functions", "team:claranet", "created-by:terraform", "${var.http_5xx_errors_rate_extra_tags}"]
}

resource "datadog_monitor" "function_high_connections_count" {
  count   = "${var.high_connections_count_enabled ? 1 : 0}"
  name    = "[${var.environment}] Function App connections count too high {{#is_alert}}{{{comparator}}} {{threshold}} ({{value}}){{/is_alert}}{{#is_warning}}{{{comparator}}} {{warn_threshold}} ({{value}}){{/is_warning}}"
  type    = "metric alert"
  message = "${coalesce(var.high_connections_count_message, var.message)}"

  query = <<EOF
    ${var.high_connections_count_time_aggregator}(${var.high_connections_count_timeframe}):
      default(azure.functions.connections${module.filter-tags.query_alert} by {resource_group,region,name}.as_rate(), 0) / ${var.functions_max_scale_count}
    > ${var.high_connections_count_threshold_critical}
  EOF

  evaluation_delay = "${var.evaluation_delay}"
  new_host_delay   = "${var.new_host_delay}"

  thresholds {
    warning  = "${var.high_connections_count_threshold_warning}"
    critical = "${var.high_connections_count_threshold_critical}"
  }

  silenced = "${var.high_connections_count_silenced}"

  notify_no_data      = false
  renotify_interval   = 0
  require_full_window = false
  timeout_h           = 1
  include_tags        = true

  tags = ["env:${var.environment}", "type:cloud", "provider:azure", "resource:azure_functions", "team:claranet", "created-by:terraform", "${var.high_connections_count_extra_tags}"]
}

resource "datadog_monitor" "function_high_threads_count" {
  count   = "${var.high_threads_count_enabled ? 1 : 0}"
  name    = "[${var.environment}] Function App threads count too high {{#is_alert}}{{{comparator}}} {{threshold}}% ({{value}}%){{/is_alert}}{{#is_warning}}{{{comparator}}} {{warn_threshold}}% ({{value}}%){{/is_warning}}"
  type    = "metric alert"
  message = "${coalesce(var.high_threads_count_message, var.message)}"

  query = <<EOF
    ${var.high_threads_count_time_aggregator}(${var.high_threads_count_timeframe}):
      default(azure.functions.thread_count${module.filter-tags.query_alert} by {resource_group,region,name}.as_rate(), 0) / ${var.functions_max_scale_count}
    > ${var.high_threads_count_threshold_critical}
  EOF

  evaluation_delay = "${var.evaluation_delay}"
  new_host_delay   = "${var.new_host_delay}"

  thresholds {
    warning  = "${var.high_threads_count_threshold_warning}"
    critical = "${var.high_threads_count_threshold_critical}"
  }

  silenced = "${var.high_threads_count_silenced}"

  notify_no_data      = false
  renotify_interval   = 0
  require_full_window = false
  timeout_h           = 1
  include_tags        = true

  tags = ["env:${var.environment}", "type:cloud", "provider:azure", "resource:azure_functions", "team:claranet", "created-by:terraform", "${var.high_threads_count_extra_tags}"]
}

resource "datadog_monitor" "function_memory_usage" {
  count   = "${var.memory_usage_enabled ? 1 : 0}"
  name    = "[${var.environment}] Function App memory usage too high {{#is_alert}}{{{comparator}}} {{threshold}} ({{value}}){{/is_alert}}{{#is_warning}}{{{comparator}}} {{warn_threshold}} ({{value}}){{/is_warning}}"
  type    = "metric alert"
  message = "${coalesce(var.memory_usage_message, var.message)}"

  query = <<EOF
    ${var.memory_usage_time_aggregator}(${var.memory_usage_timeframe}): (
      avg:azure.functions.average_memory_working_set${module.filter-tags.query_alert} by {resource_group,region,name}
    ) > ${var.memory_usage_threshold_critical}
  EOF

  evaluation_delay = "${var.evaluation_delay}"
  new_host_delay   = "${var.new_host_delay}"

  thresholds {
    warning  = "${var.memory_usage_threshold_warning}"
    critical = "${var.memory_usage_threshold_critical}"
  }

  silenced = "${var.memory_usage_silenced}"

  notify_no_data      = false
  renotify_interval   = 0
  require_full_window = false
  timeout_h           = 0
  include_tags        = true

  tags = ["env:${var.environment}", "type:cloud", "provider:azure", "resource:azure_functions", "team:claranet", "created-by:terraform", "${var.memory_usage_extra_tags}"]
}
