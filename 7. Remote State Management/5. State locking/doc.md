# Base
Running "terraform apply" simultaneously by multiple team members on the same project can couse Terraform to make concurent changes to the state file. This can result in stte fill corruption and inconsistencies

# State locking
State locking is amechanism thaht prevents multiple operations from makin concurrent changes to your infrustructure state file, which clould lead to corruption or incosistent state

# Process of State Locking
1. Before performing any write operation, Terraform attempts to acuire a "lock" on the state file.
2. If the lock is successfully acquired, Terraform proceeds with the operation.
3. Once the opration is complete, Terraform releases the lock, allowing other processes to acquire it.

# State Locking with Local Backend
If using local state(local backend), Terraform uses .loc file in the working directory for locking

# What happens if state file is Locked?
When a state lockis held, any attempt by another process to perate will fail with an error:
Error: Error qcquiring the state lock