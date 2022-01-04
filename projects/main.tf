
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC2x/Ju1faX3atx6es0KqhMlydNuAy1DIb4VjZ7S7BBH/bDFZKcPzwG9Zc1knKs3gda3+YDpESAHtcrXGAVaqrOyZWOgfhgcjrsnfcxYHR6CNnAQQsLf1vs2FdudMGeiK1bwfEJLa8D6VSWPtD9GMczHfcLdDY3codG9Q2P8npqRpcBsyxvla5Jxqctjk62qvH7J8fHkmafCLS4mdpl31h/F+/SLygzdHILsyCE4tFf8hRgZZy2L3gZv99fDCRUpkm/OCiWKiZMZ9XYJYiRT4wyWLbda/HVYyeXgsVEDPTdfXtv1cu2CK+TMSQfgj9MGmI8NpeSGuGvUFjVFIZQ287eL4YxV0K91wf0pbRuhklx7QUaTNWEAPxzJuo+triarAggD4HiaUnAaiG2Ud/rTPUgOCt9ialY3Ztn93JWh4AS+sXYABNaQh1mrojVE/NQV1re1ymPE5Tephw03dy2gWXpx1jw9zdVnI30bMHgXvk9kr7BxsBSH9l9WNYhdYm8KSk= uni@uniDesktop"
}

resource "aws_instance" "dev" {
  count = 3
  ami = "ami-026c8acd92718196b"
  instance_type = "t2.micro"
  key_name = "deployer-key"
  tags = {
    Name = "dev${count.index}"
  }
}
