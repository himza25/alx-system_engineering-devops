# 0-strace_is_your_friend.pp
# Fixes issue causing Apache to return a 500 error on WordPress site

exec { 'fix-permission':
  command => 'chown www-data:www-data /var/www/html/wp-config.php',
  path    => ['/bin', '/usr/bin'],
  onlyif  => 'test -f /var/www/html/wp-config.php',
  before  => Service['apache2'],
}

service { 'apache2':
  ensure    => running,
  enable    => true,
  subscribe => Exec['fix-permission'],
}
