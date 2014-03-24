# == Class: solr::install
# This class installs the required packages for jetty
#
# === Actions
# - Installs default jdk
# - Installs jetty and extra libs
#
class solr::install inherits solr::params {

  package { 'default-jdk':
    ensure => present,
    name   => $::solr::param::jdk_pkg,
  }

  package { 'jetty':
    ensure  => present,
    require => Package['default-jdk'],
    name    => $::solr::param::jetty_pkg,
  }

  package { 'wget':
    ensure  => present,
  }

  package { 'curl':
    ensure  => present,
  }
}

