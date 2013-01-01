class graphite{
  anchor { "graphite::start":
  } ->
  class { "graphite::packages":    
  } ->
  anchor { "graphite::end":
  }
}
