terraform {
	required_providers {
		local = {
			source = "hashicorp/local"
}
}
}

provider local {}

resource "local_file" "devops" {
	filename = "hello.txt"
	content = "This is my test file"
}

resource "random_string" "rand-str" {
	length = 16
	special = true
	override_special = "!#$%&*()-_=+[]{}<>:?"
}

output "rand-str" {
value = random_string.rand-str[*].result
}
