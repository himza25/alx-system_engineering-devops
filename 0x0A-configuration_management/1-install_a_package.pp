# Puppet manifest to ensure Python, pip, and Werkzeug 2.1.1 are installed before Flask 2.1.0

# Ensure Python is installed
package { 'python3':
  ensure => installed,
}

# Ensure pip is installed
exec { 'install-pip':
  command => 'apt-get update && apt-get install -y python3-pip',
  unless  => 'which pip3',
  require => Package['python3'], # This makes sure Python is installed first
  path    => ['/usr/bin', '/usr/local/bin'],
}

# Ensure Werkzeug 2.1.1 is installed
exec { 'install-werkzeug':
  command => 'pip3 install Werkzeug==2.1.1',
  unless  => 'pip3 freeze | grep Werkzeug==2.1.1',
  require => Exec['install-pip'], # This ensures pip is installed first
  path    => ['/usr/bin', '/usr/local/bin'],
}

# Install Flask 2.1.0
exec { 'install-flask':
  command => 'pip3 install Flask==2.1.0',
  unless  => 'pip3 freeze | grep Flask==2.1.0',
  require => [Exec['install-pip'], Exec['install-werkzeug']], # Ensures pip and Werkzeug are installed first
  path    => ['/usr/bin', '/usr/local/bin'],
}
