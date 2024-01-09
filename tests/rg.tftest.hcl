variables{
    rg = "rg-test"
}
run "create_rg" {
  command = apply

  variables {
    rg_name = var.rg
  }

  assert {
    condition     =  azurerm_resource_group.rg.name == var.rg
    error_message = "Invalid RG Name"
  }
}