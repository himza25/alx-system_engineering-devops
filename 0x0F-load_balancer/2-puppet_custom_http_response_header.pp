class nginx_custom_header {

  # Ensure Nginx is installed
  package { 'nginx':
    ensure => installed,
  }

  # Start and enable Nginx service
  service { 'nginx':
    ensure     => running,
    enable     => true,
    require    => Package['nginx'],
  }

  # Define the custom header configuration
  file_line { 'nginx_custom_header':
    path    => '/etc/nginx/sites-available/default',
    line    => '    add_header X-Served-By $hostname;',
    match   => '^    # add_header X-Served-By',
    require => Package['nginx'],
    notify  => Service['nginx'],
  }

  # Restart Nginx to apply the changes
  exec { 'nginx_restart':
    command     => '/usr/sbin/service nginx restart',
    refreshonly => true,
    subscribe   => File_line['nginx_custom_header'],
  }
}

include nginx_custom_header
