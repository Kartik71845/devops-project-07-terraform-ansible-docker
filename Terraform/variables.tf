variable "instance_type" {
  default = "t3.micro"
  type    = string
}

variable "instance_count" {
  default = 3
  type    = number
}

variable "ami_id" {
  default = "ami-0ecb62995f68bb549" # Ubuntu Server in us-east-1
  type    = string
}

variable "key_name" {
  default = "devops-project-07-key"
  type    = string
}

variable "volume_size" {
  default = 10
  type = number
}
