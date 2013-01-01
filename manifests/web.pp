class graphite::web (
  ) inherits graphite::web::params {
  anchor { "graphite::web::start":
  } ->
  class { "graphite::web::packages":
  } ~>
  class { "graphite::web::config":
  } ~>
  class { "graphite::web::service":
  } ~>
  anchor { "graphite::web::end":
  }   
}
