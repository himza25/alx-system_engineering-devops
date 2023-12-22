# Puppet manifest to kill a process named 'killmenow' using pkill

exec { 'kill-killmenow':
  command => '/usr/bin/pkill -f killmenow',
  onlyif  => '/usr/bin/pgrep -f killmenow',
  path    => ['/bin', '/usr/bin'],
}
