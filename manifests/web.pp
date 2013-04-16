class graphite::web (
    $carbonlink_hosts    = $graphite::web::params::carbonlink_hosts,
    $cluster_servers     = $graphite::web::params::cluster_servers
  ) inherits graphite::web::params {
  class { "graphite::web::packages":
  } ~>
  class { "graphite::web::config":
  } ~>
  class { "graphite::web::service":
  }
}
