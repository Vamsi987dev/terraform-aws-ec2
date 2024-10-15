resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = "t2.micro"
    vpc_security_group_ids =  var.security_grp_ids 
}