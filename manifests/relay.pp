class graphite::relay (
  $line_receiver_interface    = $graphite::relay::params::line_receiver_interface,
  $line_receiver_port         = $graphite::relay::params::line_receiver_port,
  $pickle_receiver_interface  = $graphite::relay::params::pickle_receiver_interface,
  $pickle_receiver_port       = $graphite::relay::params::pickle_receiver_port,
  $relay_method               = $graphite::relay::params::relay_method,
  $replication_factor         = $graphite::relay::params::replication_factor,
  $destinations               = $graphite::relay::params::destinations,
  $max_datapoints_per_message = $graphite::relay::params::max_datapoints_per_message,
  $max_queue_size             = $graphite::relay::params::max_queue_size,
  $use_flow_control           = $graphite::relay::params::use_flow_control,
  $use_whitelist              = $graphite::relay::params::use_whitelist,
  $carbon_metric_prefix       = $graphite::relay::params::carbon_metric_prefix,
  $carbon_metric_interval     = $graphite::relay::params::carbon_metric_interval
  ) inherits graphite::relay::params {
  anchor { "graphite::relay::start":
  } ->
  class { "graphite::relay::packages":
  } ~>
  class { "graphite::relay::config":
  } ~>
  class { "graphite::relay::service":
  } ~>
  anchor { "graphite::relay::end":
  }   
}
