resource "local_file" "pet" {
  filename = var.filename[count.index]
  content  = var.content
  file_permission = "0777"

  count = length(var.filename)

  lifecycle {
      //prevent_destroy = true
      create_before_destroy = true
  }
}

resource "local_file" "pets" {
filename = each.value
content  = var.content1

for_each =toset(var.filename1)
}