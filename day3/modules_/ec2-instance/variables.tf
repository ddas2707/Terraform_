variable "ami-id" {
  description = "value of ami id"
}

variable "instance-type" {
  description = "value of instance type"
  default     = "t2.micro"
}

variable "subnet-id" {
  description = "value of subnet id"
}
