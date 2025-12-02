resource "aws_instance" "web_server" {
  count = var.instance_count

  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  
  user_data = templatefile("${path.module}/user_data.sh", {
    instance_name = "${local.name_prefix}-web-${count.index + 1}"
  })

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
    encrypted   = true
  }

  tags = {
    Name  = "${local.name_prefix}-web-${count.index + 1}"
    Index = count.index
  }

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [aws_security_group.web_sg]
}