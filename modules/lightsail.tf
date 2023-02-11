resource "aws_lightsail_key_pair" "wp" {
  name = "${var.system_name}-${var.system_env}-${var.lightsail_name}-key"
}
resource "aws_lightsail_static_ip" "wp" {
  name = "${var.system_name}-${var.system_env}-ip"
}

resource "aws_lightsail_instance" "wp" {
  name              = "${var.system_name}-${var.system_env}-${var.lightsail_name}"
  availability_zone = var.az
  blueprint_id      = var.lightsail_blueprint_id
  bundle_id         = var.lightsail_bundle_id
  key_pair_name     = aws_lightsail_key_pair.wp.name
  tags = {
    system = var.system_name
    env    = var.system_name
  }
  depends_on = [
    aws_lightsail_key_pair.wp
  ]
}

resource "aws_lightsail_static_ip_attachment" "wp" {
  static_ip_name = aws_lightsail_static_ip.wp.id
  instance_name  = aws_lightsail_instance.wp.id
  depends_on = [
    aws_lightsail_instance.wp,
    aws_lightsail_static_ip.wp
  ]
}