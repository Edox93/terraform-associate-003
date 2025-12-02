resource "aws_eip" "web_eip" {
  count = var.create_eip ? var.instance_count : 0

  domain = "vpc"

  tags = {
    Name = "${local.name_prefix}-eip-${count.index + 1}"
  }
}

resource "aws_eip_association" "web_eip_assoc" {
  count = var.create_eip ? var.instance_count : 0

  instance_id   = aws_instance.web_server[count.index].id
  allocation_id = aws_eip.web_eip[count.index].id
}