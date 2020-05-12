output "ip" {
  value = "${join(",", aws_instance.testInstance.*.public_ip)}"
}

output "subnetid" {
  value = "${join(",",aws_instance.testInstance.*.subnet_id)}"
}