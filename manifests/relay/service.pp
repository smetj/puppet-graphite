class graphite::relay::service{
  service { "carbon-relay":
      ensure => "running"
  }
}
