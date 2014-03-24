# == Class: solr::params
# This class sets up some required parameters
#
# === Actions
# - Specifies jetty and solr home directories
# - Specifies the default core
#
class solr::params {

  case $::osfamily {
    redhat: {
      $jdk_pkg   = 'java-1.7.0-openjdk'
      $jetty_pkg = 'jetty6'
    }
    debian: {
      $jdk_pkg   = 'default-jdk'
      $jetty_pkg = [ 'jetty', 'libjetty-extra' ]
    }
    default: {
    }
  }

  $jetty_home = '/usr/share/jetty'
  $solr_home = '/usr/share/solr'
  $solr_version = '4.4.0'
  $cores = ['default']

}

