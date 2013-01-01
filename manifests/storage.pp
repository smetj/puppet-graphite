class graphite::storage (
  $storage_dir                = $graphite::storage::params::storage_dir,
  $local_data_dir             = $graphite::storage::params::local_data_dir,
  $whitelists_dir             = $graphite::storage::params::whitelists_dir,
  $conf_dir                   = $graphite::storage::params::conf_dir,
  $log_dir                    = $graphite::storage::params::log_dir,
  $pid_dir                    = $graphite::storage::params::pid_dir,
  $user                       = $graphite::storage::params::user,
  $max_cache_size             = $graphite::storage::params::max_cache_size,
  $max_updates_per_second     = $graphite::storage::params::max_updates_per_second,
  $max_creates_per_minute     = $graphite::storage::params::max_creates_per_minute,
  $line_receiver_interface    = $graphite::storage::params::line_receiver_interface,
  $line_receiver_port         = $graphite::storage::params::line_receiver_port,
  $enable_udp_listener        = $graphite::storage::params::enable_udp_listener,
  $udp_receiver_interface     = $graphite::storage::params::udp_receiver_interface,
  $udp_receiver_port          = $graphite::storage::params::udp_receiver_port,
  $pickle_receiver_interface  = $graphite::storage::params::pickle_receiver_interface,
  $pickle_receiver_port       = $graphite::storage::params::pickle_receiver_port,
  $use_insecure_unpickler     = $graphite::storage::params::use_insecure_unpickler,
  $cache_query_interface      = $graphite::storage::params::cache_query_interface,
  $cache_query_port           = $graphite::storage::params::cache_query_port,
  $use_flow_control           = $graphite::storage::params::use_flow_control,
  $log_updates                = $graphite::storage::params::log_updates,
  $whisper_autoflush          = $graphite::storage::params::whisper_autoflush,
  $whisper_sparse_create      = $graphite::storage::params::whisper_sparse_create,
  $whisper_lock_writes        = $graphite::storage::params::whisper_lock_writes,
  $use_whitelist              = $graphite::storage::params::use_whitelist,
  $carbon_metric_prefix       = $graphite::storage::params::carbon_metric_prefix,
  $carbon_metric_interval     = $graphite::storage::params::carbon_metric_interval,
  $enable_amqp                = $graphite::storage::params::enable_amqp,
  $amqp_verbose               = $graphite::storage::params::amqp_verbose,
  $amqp_host                  = $graphite::storage::params::amqp_host,
  $amqp_port                  = $graphite::storage::params::amqp_port,
  $amqp_vhost                 = $graphite::storage::params::amqp_vhost,
  $amqp_user                  = $graphite::storage::params::amqp_user,
  $amqp_password              = $graphite::storage::params::amqp_password,
  $amqp_exchange              = $graphite::storage::params::amqp_exchange,
  $amqp_metric_name_in_body   = $graphite::storage::params::amqp_metric_name_in_body,
  $enable_manhole             = $graphite::storage::params::enable_manhole,
  $manhole_interface          = $graphite::storage::params::manhole_interface,
  $manhole_port               = $graphite::storage::params::manhole_port,
  $manhole_user               = $graphite::storage::params::manhole_user,
  $manhole_public_key         = $graphite::storage::params::manhole_public_key,
  $bind_patterns              = $graphite::storage::params::bind_patterns,
  $storage_schema_pattern     = $graphite::storage::params::storage_schema_pattern,
  $storage_schema_retentions  = $graphite::storage::params::storage_schema_retentions
  ) inherits graphite::storage::params {
  anchor { "graphite::storage::start":
  } ->
  class { "graphite::storage::packages":
  } ~>
  class { "graphite::storage::config":
  } ~>
  class { "graphite::storage::service":
  } ~>
  anchor { "graphite::storage::end":
  }  
}
