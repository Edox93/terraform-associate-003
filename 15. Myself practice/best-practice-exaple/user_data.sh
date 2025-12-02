#!/bin/bash
set -e

# Update system
apt-get update
apt-get upgrade -y

# Install nginx
apt-get install -y nginx

# Create simple webpage
cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to ${instance_name}</title>
</head>
<body>
    <h1>Hello from ${instance_name}!</h1>
    <p>This server was provisioned with Terraform.</p>
</body>
</html>
EOF

# Start nginx
systemctl start nginx
systemctl enable nginx

echo "Setup complete!"
