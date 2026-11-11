resource "aws_instance" "catalogue" {
    ami = "ami-09bf9dfeeb1e9adbc"
    instance_type = var.environment == "dev" ? "t3.medium" : "t3.micro"
    subnet_id = "subnet-0a60e1efce1320187"
    vpc_security_group_ids = [ "sg-081a8846ba13dd4e8" ]
    iam_instance_profile = aws_iam_instance_profile.admin_role.name
    tags = {
        Name = "${local.common_name}_catalogue"
    }
}

resource "aws_iam_instance_profile" "admin_role" {
    name = "admin-role"
    role = "EKS-ROLE"
}