variable "key_name" {
  type = string
  description = "key for ssh inside your EC2 instance"
  default = "Abhi_linux_latest"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "ami" {
 default = "ami-09d3b3274b6c5d4aa"
}

variable "subnet_id" {
 default = "subnet-0c0e80db7e16800e2"
}

variable "tags" {
 default = {
  DataClassification = "HighlyConfidential"
  CostCenter = "NA"
  IntendedPublic = "Yes"
  ResourceOwner = "AbhiBajaj"
  Purpose = "InfraSupport"
  CreatedBy = "Abhi Bajaj"
  Team = "JavaInfra"
  JIRAProject = "NA"
  Name = "AbhiBajajTerraform"
 }
}
