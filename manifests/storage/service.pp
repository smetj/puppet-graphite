class graphite::storage::service{
  service { "carbon-cache":
      ensure => "running"
  }
}
