class graphite::carbon::service{
  service { "carbon-cache":
      ensure => "running"
  }
}
