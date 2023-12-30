# Puppet manifest to configure SSH client settings

# Ensure that the SSH client uses the specified private key
file_line { 'Declare identity file':
  ensure  => present,                    # Make sure the line is present in the file
  path    => '/etc/ssh/ssh_config',      # The file to be modified
  line    => 'IdentityFile ~/.ssh/school',  # The line to be added or replaced
  match   => '^IdentityFile',            # Replace a line that starts with 'IdentityFile'
  replace => true,                       # Allow replacement of existing line
}

# Ensure that password authentication is turned off
file_line { 'Turn off passwd auth':
  ensure  => present,                        # Make sure the line is present in the file
  path    => '/etc/ssh/ssh_config',          # The file to be modified
  line    => 'PasswordAuthentication no',    # The line to be added or replaced
  match   => '^PasswordAuthentication',      # Replace a line that starts with 'PasswordAuthentication'
  replace => true,                           # Allow replacement of existing line
}
