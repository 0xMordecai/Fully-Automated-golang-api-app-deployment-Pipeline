variable "branch" {
  description = "branch"
  type        = string
  default     = "prod" 
}

variable "cluster_name" {
  description = "cluster name"
  type        = string
  default     = "project-cluster"
}

variable "node_image" {
  description = "node image"
  type = string
  default = "kindest/node:v1.34.3"
}