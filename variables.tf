#mandatory
variable "ami_id" {
    type = string
    #default = "ami-09c813fb71547fc4f"
}

#optional , user can override
variable "instance_type" {
    default = "t2.micro"
    type = string
    validation {
        condition = contains(["t2.micro", "t3.small", "t3.medium"], var.instance_type)
        error_message = "instance_type not permitted"
    }

}

#mandatory
variable "security_grp_ids" {
    type = list(string)
    default  = ["sg-0ceadcb893f8e3930"]
}
