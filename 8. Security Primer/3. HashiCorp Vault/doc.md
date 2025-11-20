# Vault
vault allow organizations to secuerly store secrets like tokens, passwors, certificates
along with access management for protecting secrets.

One of the common chalanges nowadays in an organization is  "Secret management"

Secrets caninclude, db pass, AWS access/secret keys, API tokens, encryption keys and others

# Dynamic Secrets


# Life becomes Easier
Once Vault is integreted with multiple backends, your life will become much easier and you focus more on the right work.
Major aspect releated to Access management can be taken over by vault.

# vault provider
#The vault provider allows Terraform to read from, write to, and configure hashicorp vault.
provider "vault" {
  address = "http://127.0.0.1:8200"
}

data "vault_generic_secret" "demo" {
  path = "secret/db_creds"
}

output "vault_secrets" {
  value = data.vault_generic_secret.demo.data_json
  sensitive = true
}

# After terraform apply you will see the secrets json in tfstate file 

# Importat Noe
Interacting with Vault from Terraform causes any secrets that you 
read and write to be persisted in both Terraform's state file

# Vault Provider
The Vault provider allows Terraform to read from, write to, and configure Hashicorp Vault.