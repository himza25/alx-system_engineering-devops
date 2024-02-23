# This Puppet manifest enhances the traffic handling capacity of an Nginx server
# by increasing file ULIMITs and ensuring Nginx operates with these new limits.

file { 'fix-for-nginx':
  ensure  => file,
  path    => '/etc/default/nginx',
  # Split the inline_template for better readability
  content => inline_template('<%= 
    File.read("/etc/default/nginx")
    .gsub(/ULIMIT="-n 1024"/, "ULIMIT=\"-n 4096\"") 
  %>'),
  notify  => Exec['nginx-restart'],
}

exec { 'nginx-restart':
  command     => '/etc/init.d/nginx restart',
  path        => '/usr/bin:/usr/sbin:/bin',
  refreshonly => true, # Only run this exec when notified
}
