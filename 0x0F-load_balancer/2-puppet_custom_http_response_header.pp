# Puppet script to automate the installation and configuration of Nginx. 
# It updates the system, installs Nginx, configures a custom HTTP header, and restarts Nginx.

# Update the system's package list
exec {'update':
  provider => shell,
  command  => 'sudo apt-get -y update',
  before   => Exec['install Nginx'],
}

# Install Nginx if it's not already installed
exec {'install Nginx':
  provider => shell,
  command  => 'sudo apt-get -y install nginx',
  before   => Exec['add_header'],
}

# Add a custom HTTP header 'X-Served-By' to the Nginx configuration
exec { 'add_header':
  provider    => shell,
  environment => ["HOST=${hostname}"],
  command     => 'sudo sed -i "s/include \/etc\/nginx\/sites-enabled\/\*;/include \/etc\/nginx\/sites-enabled\/\*;\n\tadd_header X-Served-By \"$HOST\";/" /etc/nginx/nginx.conf',
  before      => Exec['restart Nginx'],
}

# Restart Nginx to apply the new configuration
exec { 'restart Nginx':
  provider => shell,
  command  => 'sudo service nginx restart',
}
