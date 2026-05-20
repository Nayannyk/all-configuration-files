resource "aws_instance" "web" {
  instance_type               = var.environment == "prd" ? "t2.micro" : "t2.medium"
  ami                         = var.ami_id
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  key_name                    = var.key_name
  associate_public_ip_address = true
  user_data = templatefile("${path.module}/userdata.sh.tftpl", {
    html_content = file("${path.module}/index.html")
  })

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = var.root_volume_type
    encrypted   = true
  }

  tags = merge(var.common_tags, {
    Name = "web-instance"
  })
}
