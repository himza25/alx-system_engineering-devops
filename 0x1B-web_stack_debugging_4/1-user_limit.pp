# This Puppet manifest is designed to adjust the OS configuration
# to increase the number of open files allowed for the 'holberton' user,
# ensuring that login and file operations do not result in 'Too many open files' error.

# Ensure the presence of a limits configuration file for the 'holberton' user
file { '/etc/security/limits.d/holberton.conf':
  ensure  => file,
  content => "holberton soft nofile 4096\nholberton hard nofile 8192\n",
  # The content line sets the soft limit to 4096 and the hard limit to 8192 for the number of open files
}

# Optionally, apply the limits without requiring a session logout/login
exec { 'apply-limits':
  command     => 'sysctl -p',
  path        => ['/bin/', '/usr/bin', '/sbin', '/usr/sbin'],
  refreshonly => true,
  subscribe   => File['/etc/security/limits.d/holberton.conf'],
  # This exec resource applies the new limits. It is triggered only if the file resource changes.
}
