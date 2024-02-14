# 0-strace_is_your_friend.pp
# Puppet manifest to debug and fix a 500 error in a WordPress installation

# Define the file path to the WordPress configuration file
$file_to_edit = '/var/www/html/wp-config.php'

# Hypothetical fix: Correct a typo or misconfiguration detected by strace
# Example: Replacing an incorrect database setting 'DB_PASWORD' with 'DB_PASSWORD'
exec { 'correct_wp_config_typo':
  command => "sed -i 's/DB_PASWORD/DB_PASSWORD/g' ${file_to_edit}",
  path    => ['/bin', '/usr/bin'],
  # Ensure this exec only runs if the incorrect string is found in the wp-config.php file
  onlyif  => "grep -q 'DB_PASWORD' ${file_to_edit}",
}
