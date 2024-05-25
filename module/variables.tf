variable "api_name" {
  description = "The name of the API"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group containing the APIM instance"
  type        = string
}

variable "apim_name" {
  description = "The name of the API Management instance"
  type        = string
}

variable "revision" {
  description = "The revision of the API"
  type        = string
  default     = "1"
}

variable "display_name" {
  description = "The display name of the API"
  type        = string
}

variable "path" {
  description = "The path at which the API will be available"
  type        = string
}

variable "protocols" {
  description = "The protocols the API supports"
  type        = list(string)
  default     = ["https"]
}

variable "service_url" {
  description = "The URL of the backend service implementing the API"
  type        = string
}

variable "import_content_format" {
  description = "The format of the import content"
  type        = string
  default     = "swagger-link-json"
}

variable "import_content_value" {
  description = "The link to the content being imported"
  type        = string
}

