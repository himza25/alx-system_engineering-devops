# Puppet manifest to install and configure Nginx
class nginx_setup {
    # Ensure Nginx is installed
    package { 'nginx':
        ensure => installed,
    }

    # Start and enable Nginx service
    service { 'nginx':
        ensure     => running,
        enable     => true,
        require    => Package['nginx'],
        subscribe  => File['/etc/nginx/sites-available/default'],
    }

    # Configure Nginx to serve 'Hello World!' page at root
    file { '/var/www/html/index.html':
        ensure  => file,
        content => '<html><body><h1>Hello World!</h1></body></html>',
        require => Package['nginx'],
    }

    # Configure Nginx to redirect /redirect_me to a different URL with 301
    file { '/etc/nginx/sites-available/default':
        ensure  => file,
        content => template('nginx/default.erb'),
        require => Package['nginx'],
        notify  => Service['nginx'],
    }
}

include nginx_setup
