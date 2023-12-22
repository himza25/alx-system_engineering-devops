# Puppet manifest to create a file at /tmp/school with specific properties
file { '/tmp/school':
  ensure  => present,
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => "I love Puppet\n",
}
