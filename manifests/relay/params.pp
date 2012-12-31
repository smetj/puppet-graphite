class graphite::relay::params{
  $line_receiver_interface    = "0.0.0.0"
  $line_receiver_port         = "2013"
  $pickle_receiver_interface  = "0.0.0.0"
  $pickle_receiver_port       = "2014"
  $relay_method               = "rules"
  $replication_factor         = "1"
  $destinations               = [ "127.0.0.1:2004" ]
  $max_datapoints_per_message = "500"
  $max_queue_size             = "10000"
  $use_flow_control           = "True"
  $use_whitelist              = "False"
  $carbon_metric_prefix       = "carbon"
  $carbon_metric_interval     = "60"
}
