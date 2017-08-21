class sssd::monit(
                    $basedir     = '/usr/local/bin',
                    $script_name = 'check_sssd_user',
                    $ensure      = 'present',
                  ) inherits sssd::params {

  # falta acceptance testing

  file { "${basedir}/${script_name}":
    ensure  => $ensure,
    owner   => 'root',
    group   => 'root',
    mode    => '0750',
    content => file("${module_name}/check_sssd_user.sh"),
  }
}
