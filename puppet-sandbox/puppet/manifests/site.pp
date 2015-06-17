node artifactory {
    require 'artifactory::artifactory'
}

node postgresql {
    require 'artifactory::postgresql'
}