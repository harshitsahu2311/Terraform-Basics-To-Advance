variable "filename" {
	default = "/home/harshit/Music/terraform/Day02/terraform-variables/auto_generated.txt" 
}

variable "content" {
	default = "This is my real content"
}

variable "myname" {}

variable "content_map" {
	type = map
	default = {
		"content1" = "This blog is very good"
		"content2" = "This blog is very great"
}
}

variable "file_list" {
	type = list
	default = ["/home/harshit/Music/terraform/Day02/terraform-variables/file1.txt","/home/harshit/Music/terraform/Day02/terraform-variables/file2.txt"]
}

variable "number_list" {
	type = list(number)
	default = [1,2,3,4,5]
}

variable "aws_ec2_config" {
	type = object ({
		name = string
		no_of_instances = number
		keys = list(string)
		ami_id = string
})
	default = {
		name = "AWS_EC2"
		no_of_instances = 4
		keys = ["test.pem","vpc.pem"]
		ami_id = "i-28428yiuiuq"
}
}

variable "NAME" {}

variable "LINKEDIN" {}
