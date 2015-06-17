class artifactory {
  package { 'rsync':
    ensure => installed
  }
  
  package { 'java-1.8.0-openjdk':
    ensure => installed
  }
  
  package { 'Artifactory':
    ensure          => installed,
    source          => '/tmp/artifactory.rpm',
    provider        => 'rpm',
    install_options => '-Uvh',
    require         => [ File['/tmp/artifactory.rpm'], Package['rsync','java-1.8.0-openjdk'] ]
  }
  
  file { '/tmp/artifactory.rpm':
    source => 'puppet:///modules/artifactory/artifactory-powerpack-rpm-3.8.0.rpm',
  }
  
}