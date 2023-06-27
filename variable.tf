variable "name" {
  description = "Name tag of the VPC"
  type        = string
  default     = "opstree"
}
/*------------------------*/
variable "subnet_name" {
  description = "Name of the Subnet group"
  type        = string
  default = "pub-subnet"
}

variable "availability_zones" {
  type        = list(string)
  default   = ["ap-south-1a","ap-south-1b"]
}

variable "tags" {
  description = "A map of tags to be added to subnets"
  type        = map(string)
  default     = {}
}

# variable "pri_subnets_cidr" {
#   description = "List of CIDR's for subnets"
#   type        = list(string)
# }

/*------------------*/
variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "instance_tenancy" {
  description = "If this attribute is true, the provider ensures all EC2 instances that are launched in a VPC run on hardware that's dedicated to a single customer."
  type        = string
  default     = "default"
}

variable "enable_dns_support" {
  description = "If this attribute is false, the Amazon-provided DNS server that resolves public DNS hostnames to IP addresses is not enabled."
  type        = string
  default     = "true"
}

variable "enable_dns_hostnames" {
  description = "If this attribute is true, instances in the VPC get public DNS hostnames, but only if the enableDnsSupport attribute is also set to true."
  type        = string
  default     = "false"
}

# variable "tags" {
#   description = "A map of tags to add to all resources"
#   type        = map(string)
#   default     = {}
# }

variable "vpc_tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {}
}

# variable "public_sub_az" {
#   description = "AZ for public subnet"
#   type        = list(string)
#   default     = ["10.0.0.0/19","10.0.32.0/19","10.64.0.0/19"]
# }

# variable "public_sub_az_id" {
#   description = "ID of AZ for public subnet"
#   type        = list(string)
#   default     = ["ap-south-1a","ap-south-1b","ap-south-1c"]
# }

variable "pub_subnets_cidr" {
  description = "CIDR of public subnet"
  type        = list(string)
  default     = ["10.0.1.0/24","10.0.2.0/24"]
#   default     = ["ap-south-1a","ap-south-1b","ap-south-1c"]
}

variable "app_subnets_cidr" {
  description = "CIDR of public subnet"
  type        = list(string)
  default     = ["10.0.3.0/24","10.0.4.0/24"]
#   default     = ["ap-south-1a","ap-south-1b","ap-south-1c"]
}

variable "map_public_ip_on_launch" {
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address"
  type        = string
  default     = false
}

variable "nacl_egress_rule_no" {
  description = "Starting rule number for the entry in NACL egress rule"
  default     = 200
}

variable "nacl_egress_protocol" {
  description = "Protocol on which NACL egress rule applied. If using the -1 'all' protocol,"
  default     = "tcp"
}

variable "nacl_egress_action" {
  description = "Action to allow or deny the traffic that matches the rule"
  default     = "allow"
}

variable "nacl_egress_from_port" {
  description = "The from port to match rule in NACl egress"
  type        = list(number)
  default     = [80,443]
}

variable "nacl_egress_to_port" {
  description = "The to port to match rule in NACl egress"
  type        = list(number)
  default     = [80,443]
}

variable "nacl_ingress_rule_no" {
  description = "Starting rule number for the entry in NACL ingress rule"
  default     = 100
}

variable "nacl_ingress_protocol" {
  description = "Protocol on which NACL ingress rule applied. If using the -1 'all' protocol,"
  default = "tcp"
}

variable "nacl_ingress_action" {
  description = "Action to allow or deny the traffic that matches the rule"
  default     = "allow"
}

variable "nacl_ingress_from_port" {
  description = "The from port to match rule in NACl ingress"
  type        = list(number)
  default     = [80,443]
}

variable "nacl_ingress_to_port" {
  description = "The to port to match rule in NACl ingress"
  type        = list(number)
  default     = [80,443]
}

variable "sg_egress_from_port" {
  description = "The from port to match egress rule in security group"
  type = list(number)
  default = [80,443]
}

variable "sg_egress_to_port" {
   description = "The to port to match egress rule in security group"
  type = list(number)
  default = [80,443]
}

variable "sg_ingress_from_port" {
   description = "The from port to match ingress rule in security group"
  type = list(number)
  default = [80,443]
}

variable "sg_ingress_to_port" {
  description = "The to port to match ingress rule in security group"
  type = list(number)
  default = [80,443]
}

variable "whitelist_ssh_ip" {
  description = "The ip address allowed to do ssh"
  type = list(string)
  default = ["171.76.32.5/32","191.23.54.23/32"]
}

variable "certificate_arn" {
  description = "The ARN of the default SSL server certificate"
  default     = ""
}

variable "require_hosted_zone" {
  description = "Enable true to create hosted zone"
}

variable "name_hz" {
  description = "Hostzone domain name"
}

variable "record_type" {
  description = "The record type"
}