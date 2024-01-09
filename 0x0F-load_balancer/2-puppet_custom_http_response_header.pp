# Puppet script to set up Nginx with a custom HTTP header

class nginx_setup {

  exec { 'update_packages':
    command  => '/usr/bin/apt-get -y update',
    path     => '/usr/bin:/bin',
    logoutput => true,
    before   => Exec['install_nginx'],
  }

  exec { 'install_nginx':
    command  => '/usr/bin/apt-get -y install nginx',
    path     => '/usr/bin:/bin',
    logoutput => true,
    unless   => '/usr/bin/dpkg -l | /bin/grep nginx',
    require  => Exec['update_packages'],
    before   => Exec['configure_nginx'],
  }

  exec { 'configure_nginx':
    command  => "sed -i 's/include \\/etc\\/nginx\\/sites-enabled\\/*;/include \\/etc\\/nginx\\/sites-enabled\\/*;\\n\\tadd_header X-Served-By \"\$HOSTNAME\";/' /etc/nginx/nginx.conf",
    path     => '/usr/bin:/bin',
    logoutput => true,
    unless   => "grep -q 'X-Served-By' /etc/nginx/nginx.conf",
    require  => Exec['install_nginx'],
    notify   => Service['nginx_service'],
  }

  service { 'nginx_service':
    ensure    => running,
    enable    => true,
    hasstatus => true,
    subscribe => Exec['configure_nginx'],
  }
}

include nginx_setup
