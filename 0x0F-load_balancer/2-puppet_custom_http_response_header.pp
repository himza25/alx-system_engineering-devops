#!/usr/bin/env bash
# custom header using puppet

class nginx_custom_header {
  
  # Ensure Nginx is installed
  package { 'nginx':
    ensure => installed,
  }

  # Start and enable Nginx service
  service { 'nginx':
    ensure  => running,
    enable  => true,
    require => Package['nginx'],
  }

  # Configure Nginx to add a custom HTTP header
  exec { 'insert_header':
    command => "sed -i '/^\s*server_name/a \\\tadd_header X-Served-By \$hostname;' /etc/nginx/sites-available/default",
    path    => '/bin:/usr/bin:/sbin:/usr/sbin',
    onlyif  => "test $(grep -c 'X-Served-By' /etc/nginx/sites-available/default) -eq 0",
    require => Package['nginx'],
    notify  => Service['nginx'],
  }
}

include nginx_custom_header
