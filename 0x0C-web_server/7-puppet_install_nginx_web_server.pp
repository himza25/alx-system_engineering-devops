# Puppet Manifest for Nginx Setup

# Ensure Nginx is installed on the system
package { 'nginx':
  ensure => installed,
}

# Create and manage the content of the index.html file
file { '/var/www/html/index.html':
  ensure  => present,
  content => 'Hello World!',
  require => Package['nginx'], # Ensure Nginx is installed before modifying files
}

# Configure the Nginx to perform 301 redirect for '/redirect_me'
file_line { 'nginx_redirect_me':
  path   => '/etc/nginx/sites-available/default',
  line   => '        location /redirect_me { return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4; }',
  match  => '^        location /redirect_me',
  ensure => present,
  require => Package['nginx'], # Depend on Nginx installation
  notify => Service['nginx'],  # Notify Nginx service to restart after change
}

# Manage the Nginx service, ensuring it is running
service { 'nginx':
  ensure => running,
  enable => true,
  require => File['/var/www/html/index.html'], # Ensure file is in place before service starts
  subscribe => File_Line['nginx_redirect_me'], # Restart Nginx if redirect configuration changes
}
