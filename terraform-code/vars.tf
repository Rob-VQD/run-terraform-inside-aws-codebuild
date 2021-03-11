variable "region" {
  #default = "eu-central-1" # Frankfurt
  #default = "us-east-2" # Ohio
  #default = "us-west-2" #Oregon
  #default = "ap-southeast-2"
  #default = "us-east-2"
  #default = "eu-west-1"
  default = "us-east-1" # Virginia
  description = "the region where you want deploy the solution"
}

variable "prefix" {
    default = "pepapp1"
    description = "The prefix used to build the elements"
}

variable "IP_address_port_1433" {
    type = list(string)
    description = "Give IP addresses to allow traffic to RDS, every IP in string form and total in list form (default is ONLY VQD IP address)"
}

variable "Database_Password" {
    type = string
    description = "Give the Password to login to the database"
}

variable "Database_Username" {
    type = string
    description  = "Give the Username to login to the database"
}

variable "Port_to_connect_to_db" {
    type = number
    description = "Give the port to connect to the db (default 3306)"
    default = 3306
}
