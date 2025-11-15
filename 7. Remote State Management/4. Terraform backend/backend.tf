terraform {
  backend "local" {
    path = "prod.state"
  }
}