# 0-strace_is_your_friend.pp
# Puppet manifest to debug and fix a 500 error by correcting a specific typo in a WordPress configuration file

# Define the path to the WordPress settings file
$file_to_edit = '/var/www/html/wp-settings.php'

# Use exec resource to replace "phpp" with "php" in the wp-settings.php file
exec { 'correct_typo_in_wp_settings':
  command => "sed -i 's/phpp/php/g' ${file_to_edit}",
  path    => ['/bin', '/usr/bin'],
  # Ensure this correction is only applied if "phpp" is actually found in the file
  onlyif  => "grep -q 'phpp' ${file_to_edit}",
}
