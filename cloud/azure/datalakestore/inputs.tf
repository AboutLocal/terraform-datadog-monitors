variable "environment" {
  description = "Architecture environment"
  type        = "string"
}

variable "filter_tags_use_defaults" {
  description = "Use default filter tags convention"
  default     = "true"
}

variable "filter_tags_custom" {
  description = "Tags used for custom filtering when filter_tags_use_defaults is false"
  default     = "*"
}

variable "message" {
  description = "Message sent when a monitor is triggered"
}

variable "delay" {
  description = "Delay in seconds for the metric evaluation"
  default     = 900
}

# Azure Datalake Store specific variables
variable "status_silenced" {
  description = "Groups to mute for Datalake Store status monitor"
  type        = "map"
  default     = {}
}

variable "status_message" {
  description = "Custom message for Datalake Store status monitor"
  type        = "string"
  default     = ""
}

variable "status_time_aggregator" {
  description = "Monitor aggregator for Datalake Store status [available values: min, max or avg]"
  type        = "string"
  default     = "max"
}

variable "status_timeframe" {
  description = "Monitor timeframe for Datalake Store status [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  default     = "last_15m"
}
