###############################################
# Required variables
###############################################
variable "region" {
  description = "Region where Compartment OCID resides."
  default     = ""
}

variable "compartment_ocid" {
  description = "Compartment OCID when VCN will be created."
  default     = ""
}

variable "vcn_cidr" {
  description = "Define CIDR for the vcn"
  default     = ""
}

variable "num_http_server" {
  description = "Number of HTTP server to be deployed"
  default     = 3
}

variable "bastion_ad" {
  default = ""
}

variable "bastion_subnet_id" {
  description = "Subnet on which bastion will be created"
  default     = ""
}

variable "bastion_hostname" {
  description = "Display Name for Bastion"
  default     = ""
}

variable "bastion_user" {
  description = "Login user name for Bastion"
  default     = "opc"
}

variable "bastion_public_key_file" {
  description = "Public key file for bastion login"
  default     = ""
}

variable "bastion_private_key_file" {
  description = "Private key file for bastion login"
  default     = ""
}

variable "bastion_image_id" {
  description = "The OCID of an image for bastion to use."
  default     = ""
}

variable "bastion_shape" {
  description = "Instance shape to use for bastion instances"
  default     = ""
}

variable "ssh_public_key_file" {
  description = "Public SSH keys for the default user on the instance."
  default     = ""
}

variable "ssh_private_key_file" {
  description = "Private SSH keys file path to login into the instance."
  default     = ""
}

variable "instance_ad1" {
  description = "Availability domain for instance1."
  default     = ""
}

variable "instance_ad2" {
  description = "Availability domain for instance2."
  default     = ""
}

variable "instance_ad3" {
  description = "Availability domain for instance3."
  default     = ""
}

variable "instance_image_id" {
  description = "The OCID of an image for slave instance to use."
  default     = ""
}

variable "instance_shape" {
  description = "Instance shape to use for apache instances"
  default     = ""
}

variable "instance_subnet1_id" {
  description = "Subnet1 prefix on which instances will be created"
  default     = ""
}

variable "instance_subnet2_id" {
  description = "Subnet2 prefix on which instances will be created"
  default     = ""
}

variable "instance_subnet3_id" {
  description = "Subnet3 prefix on which instances will be created"
  default     = ""
}

variable "instance_name" {
  description = "Name prefix for instances"
  default     = ""
}

variable "instance_scripts" {
  description = "Scripts to run on instances"
  default     = ""
}

variable "http_port" {
  description = "http port for instances"
  default     = "80"
}

variable "enable_https" {
  description = "Mention true/false to enable/disable https in the apache server respectively"
  default     = "true"
}

variable "https_port" {
  description = "https port for instances"
  default     = "443"
}

variable "enable_lb_https" {
  description = "Mention true/false to enable/disable https in the load balancer"
  default     = "false"
}

variable "apache_server_ca_certificate" {
  description = "Mention ca_certificate for configuring backend apache server"
  default     = ""
}

variable "apache_server_public_certificate" {
  description = "Mention public_certificate for configuring backend apache server"
  default     = ""
}

variable "apache_server_private_key" {
  description = "Mention private_key for configuring backend apache server"
  default     = ""
}

variable "cn_name" {
  description = "CN Name for the tls certificate configuration, e.g) www.example.com"
  default     = ""
}

variable "server_cnname" {
  description = "Server CN Name for the tls certificate configuration when create_selfsigned_cert=true"
  default     = ""
}

variable "create_selfsigned_cert" {
  description = "Mention true if self signed certificate to be created"
  default     = "false"
}

variable "host_address" {
  description = "Host address for the http configuration, e.g) www.example.com"
  default     = ""
}

variable "loadbalancer_ca_certificate" {
  description = "CA Certificate for loadbalancer"
  default     = ""
}

variable "loadbalancer_public_certificate" {
  description = "Public Certificate for loadbalancer"
  default     = ""
}

variable "loadbalancer_private_key" {
  description = "Private Key for loadbalancer"
  default     = ""
}

variable "loadbalancer_name" {
  description = "Display Name for loadbalancer"
  default     = ""
}

variable "loadbalancer_shape" {
  description = "Display Name for loadbalancer"
  default     = ""
}

variable "primary_loadbalancer_ad" {
  description = "Availability Domain for primary loadbalancer"
  default     = ""
}

variable "primary_loadbalancer_subnet" {
  description = "Subnet on which primary loadbalancer will be created"
  default     = ""
}

variable "primary_loadbalancer_name" {
  description = "Display Name for primary loadbalancer"
  default     = ""
}

variable "standby_loadbalancer_ad" {
  description = "Availability Domain for standby loadbalancer"
  default     = ""
}

variable "standby_loadbalancer_subnet" {
  description = "Subnet on which standby loadbalancer will be created"
  default     = ""
}

variable "standby_loadbalancer_name" {
  description = "Display Name for standby loadbalancer"
  default     = ""
}

variable "loadbalancer_instance_shape" {
  description = "Instance shape for loadbalancer instances"
  default     = ""
}

variable "loadbalancer_instance_image_id" {
  description = "The OCID of an image for loadbalancer instance to use."
  default     = ""
}

variable "lb_hostname1" {
  description = "Hostname for loadbalancer instance1 to use in backendset"
  default     = ""
}

variable "lb_hostname2" {
  description = "Hostname for loadbalancer instance2 to use in backendset"
  default     = ""
}

variable "lb_hostname3" {
  description = "Hostname for loadbalancer instance3 to use in backendset"
  default     = ""
}

variable "subnet_ids" {
  type        = "list"
  description = "Subnet IDs for the load balancer"
  default     = []
}
