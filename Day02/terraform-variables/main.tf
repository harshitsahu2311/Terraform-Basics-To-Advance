resource "local_file" "devops" {
	filename = var.file_list[0]
	content = var.content_map["content1"]
}

resource "local_file" "terraform_variables" {
        filename = var.file_list[1]
        content = var.content_map["content2"]
}

output "my_personal_name" {
	value = var.myname
}

output "number_list" {
	value = var.number_list[*]
}

output "aws_ec2_info" {
	value = var.aws_ec2_config
}

output "My_details" {
	value = var.NAME
}
