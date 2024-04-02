# variables.tf

variable "aws_access_key" {
  description = "The IAM public access key"
}

variable "aws_secret_key" {
  description = "IAM secret access key"
}

variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "eu-west-2"
}

variable "ec2_task_execution_role_name" {
  description = "ECS task execution role name"
  default     = "myEcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role name"
  default     = "myEcsAutoScaleRole"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "ollama_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "ollama/ollama:latest"
}
variable "ollama_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 11434

}

variable "webui_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "ghcr.io/open-webui/open-webui:git-26a187f"
}

variable "webui_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 8080

}

variable "ollama_backend_container" {
  default = "ollama_backend_container"
}

variable "ollama_backend_port" {
  default = "ollama_backend_container"
}
variable "webui_container" {
  default = "webui_container"
}
variable "app_count" {
  description = "Number of docker containers to run"
  default     = 1
}

variable "health_check_path" {
  default = "/"
}
variable "total_fargate_cpu" {
  default = "4096"
}
variable "total_fargate_memory" {
  default = "8192"
}
variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}