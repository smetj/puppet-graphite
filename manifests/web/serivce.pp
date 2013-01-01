class graphite::web::service{
  service { "carbon-cache":
      ensure => "running"
  }
}
