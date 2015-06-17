class artifactory::postgresql {
   class { 'postgresql::globals':
     encoding => 'UTF8',
     locale   => 'en_US.UTF-8'
   }
   class { 'postgresql::server':
       postgres_password       => 'postgres',
       locale                  => 'en_US.UTF-8',
       ip_mask_allow_all_users => '0.0.0.0/0',
       listen_addresses        => '*',
       ipv4acls                => ['local all all md5'],
       service_provider        => 'systemd'
   }
   postgresql::server::db { 'artifactory':
     user     => 'artifactory',
     password => postgresql_password('artifactory', 'youllneverguess'),
   }
}