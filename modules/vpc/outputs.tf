output "vpc_output" {
  value = {
    vpc_id         = aws_vpc.VPC.id
    public_subnet  = aws_subnet.PublicSubnet.*
    private_subnet = aws_subnet.PrivateSubnet.*.id

  }
}