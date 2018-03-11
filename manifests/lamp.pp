package { 'httpd':
       
  ensure => installed,
}


service { 'httpd':
  ensure => running,
  require => Package['httpd'],
}


package { 'mariadb-server':
 
  ensure => installed,
}


service { 'mariadb':
  ensure => running,
  require => Package['mariadb-server'],
}


package { 'php':
  
  ensure => installed,
}


file { '/var/www/html/info.php':
  ensure => file,
  content => '<?php  phpinfo(); ?>',    # phpinfo code
  require => Package['httpd'],        # require 'apache2' package before creating
} 
