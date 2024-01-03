# Puppet Manifest for Installing and Configuring Nginx

# Ensures that Nginx is installed on the system
package { 'nginx':
  ensure => installed,
}

# Sets up the main website page with 'Hello World!' content
file { '/var/www/html/index.html':
  ensure  => present,
  content => 'Hello World!',
}

# Configures Nginx to redirect '/redirect_me' to a specified URL with a 301 status
file_line { 'setup_redirect':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _;',
  line   => '        location /redirect_me { return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4; }',
}

# Stops the Nginx service to apply changes
exec { 'stop_nginx_service':
  command => 'sudo service nginx stop',
  path    => ['/bin', '/usr/bin', '/usr/sbin'],
}

# Starts the Nginx service to ensure it is running with the latest configuration
exec { 'start_nginx_service':
  command => 'sudo service nginx start',
  path    => ['/bin', '/usr/bin', '/usr/sbin'],
}
