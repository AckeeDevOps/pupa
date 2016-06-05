class profile::monitoring {
  include ::facette

  include ::collectd
  include ::collectd::plugin::cpu
  include ::collectd::plugin::df
  include ::collectd::plugin::interface
  include ::collectd::plugin::load
  include ::collectd::plugin::memory
  include ::collectd::plugin::processes
  include ::collectd::plugin::rrdtool
  include ::collectd::plugin::users
  include ::collectd::plugin::syslog
  include ::collectd::plugin::ping

  ::profile::firewall::allow { 'allow-world-facette':
    port => 12003,
  }
}
