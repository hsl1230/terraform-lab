variable "var_project" {
  type = string
  default = "telus-arena-study-lab-005c64"
}

variable "var_env" {
  type = string
  default = "dev"
}

variable "var_company" {
  type = string
  default = "telus"
}

variable "uc1_private_subnet" {
  type = string
  default = "10.26.1.0/24"
}

variable "uc1_public_subnet" {
  type = string
  default = "10.26.2.0/24"
}

variable "ue1_private_subnet" {
  type = string
  default = "10.26.3.0/24"
}

variable "ue1_public_subnet" {
  type = string
  default = "10.26.4.0/24"
}

variable "var_iap_ip_range" {
  type = string
  default = "35.235.240.0/20"
}

variable "credentials_file" {
	type = string
}
