locals {
  tags = {
    Workspace = terraform.workspace
    Name      = var.name
  }
}
