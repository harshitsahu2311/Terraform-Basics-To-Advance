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
