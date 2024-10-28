variable "cidr" {
  type = string
}
variable "vpc-name" {
  type = string
}
variable "sub01" {
  type = string
}
variable "sub02" {
  type = string
}
variable "sub03" {
  type = string
}
variable "az-subnet01" {
  type = string
}
variable "az-subnet02" {
  type = string
}
variable "az-subnet03" {
  type = string
}
variable "sub01-name" {
  type = string
}
variable "sub02-name" {
  type = string
}
variable "sub03-name" {
  type = string
}
variable "keygyn-name" {
  type = string
}
variable "EC2-01" {
  type = string
}
variable "EC2-ami" {
  type = string
}
variable "EC2-family" {
  type = string
}

variable "Security-group-name" {
  type = string
}
variable "Security-group-desc" {
  type = string
}
variable "config-path" {
  type = string
}
variable "cred-file-path" {
  type = string
}
variable "provider-region" {
  type = string
}
variable "igw-name" {
  type = string
}
variable "rt-name" {
  type = string
}
variable "rt-name2" {
  type = string
}
variable "EC2-02" {
  type = string
}
variable "profile-name" {
  type = string
}
variable "lanuch-temp-name" {
  type = string
}
variable "target-group-name" {
  type = string
}
variable "alb-name" {
  type = string
}
variable "instance_names" {
  type = map(string)

}