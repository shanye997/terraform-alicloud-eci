variable "name" {
  description = "The name of the resources."
  type        = string
  default     = "tf-example"
}

variable "taints" {
  description = "The taint."
  type        = map(string)
  default = {
    effect = "NoSchedule"
    key    = "Tf1"
    value  = "Test1"
  }
}

variable "cpu" {
  description = "The amount of CPU resources allocated to the container group."
  type        = number
  default     = 8.0
}

variable "memory" {
  description = "The amount of memory resources allocated to the container group."
  type        = number
  default     = 16.0
}

variable "restart_policy" {
  description = "The restart policy of the container group. Default to Always."
  type        = string
  default     = "Always"
}

variable "container_name" {
  description = "The name of the container."
  type        = string
  default     = "nginx"
}

variable "container_working_dir" {
  description = "The working directory of the container."
  type        = string
  default     = "/tmp/nginx"
}

variable "container_image_pull_policy" {
  description = "The restart policy of the image."
  type        = string
  default     = "IfNotPresent"
}

variable "container_commands" {
  description = "The commands run by the init container."
  type        = list(string)
  default     = ["/bin/sh", "-c", "sleep 9999"]
}

variable "volume_mounts" {
  description = "The structure of volumeMounts."
  type        = map(string)
  default = {
    mount_path = "/tmp/test"
    read_only  = false
    name       = "empty1"
  }
}


variable "environment_vars" {
  description = "The structure of environmentVars."
  type        = map(string)
  default = {
    key   = "test"
    value = "busybox"
  }
}


variable "init_container_name" {
  description = "The name of the init container."
  type        = string
  default     = "init-busybox"
}

variable "init_container_image_pull_policy" {
  description = "The restart policy of the image."
  type        = string
  default     = "IfNotPresent"
}

variable "init_container_commands" {
  description = "The commands run by the init container."
  type        = list(string)
  default     = ["echo"]
}

variable "init_container_args" {
  description = "The arguments passed to the commands."
  type        = list(string)
  default     = ["hello initcontainer"]
}

variable "volumes" {
  description = "The list of volumes."
  type        = map(string)
  default = {
    name = "empty1"
    type = "EmptyDirVolume"
  }
}
