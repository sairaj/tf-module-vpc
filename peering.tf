# Creates peering between robot vpc to Default VPC

resource "aws_vpc_peering_connection" "peering" {
  peer_vpc_id   = aws_vpc.main.id
  vpc_id        = var.DEFAULT_VPC_ID
  auto_accept   = true                  # This options is valid if bpth the VPC's are in the same account

  tags = {
    Name = "robot-${var.ENV}-default-vpc-peering"
  }
}