class firefox (
  String     $browser_startup_homepage                    = '',
  Integer    $browser_startup_page                        = 1,
  Boolean    $browser_shell_checkDefaultBrowser           = true,
  Boolean    $app_update_auto                             = false,
  Boolean    $app_update_enabled                          = false,
  Boolean    $app_update_service_enabled                  = false,
  Boolean    $browser_rights_override                     = true,
  String     $browser_startup_homepage_override_mstone    = 'ignore',
  Boolean    $browser_rights_3_shown                      = true,
  Boolean    $pdfjs_disabled                              = true,
  Boolean    $shumway_disabled                            = true,
  Boolean    $plugins_notifyMissingFlash                  = false,
  Boolean    $datareporting_healthreport_service_enabled  = false,
  Boolean    $datareporting_policy_dataSubmissionEnabled  = false, 
  Boolean    $toolkit_telemetry_enabled                   = false,
  Boolean    $toolkit_telemetry_rejected                  = true,
  Integer    $toolkit_telemetry_prompted                  = 2,
  Boolean    $datareporting_healthreport_uploadEnabled    = false,
  Boolean    $browser_tabs_warnOnClose                    = false,
  Integer    $network_proxy_type                          = 5,
             $proxy_settings                              = undef,

)
{
case $operatingsystem {
      centos, redhat: { $pathfirefox = "/usr/lib64/firefox/"
                        $pathpref = "${pathfirefox}defaults/preferences"  }
      debian, ubuntu: { $pathfirefox = "/usr/lib/firefox"
                        $pathpref = "${pathfirefox}/defaults/pref" }
      default: { fail("Unrecognized operating system for webserver") }
}

package {
    'firefox':
        ensure => 'installed'
}

file { 'mozilla.cfg':
        path => "$pathfirefox/mozilla.cfg",
        ensure  => file,
        content => template('firefox/mozilla.cfg.erb'),
        mode => '644',
        owner => 'root',
        group => 'root',
        #require => Class['firefox::install'],
}

file { 'all-settings.js':
         path => "$pathpref/all-settings.js",
         ensure  => file,
         source => 'puppet:///modules/firefox/all-settings.js',
         mode => '644',
         owner => 'root',
         group => 'root',
         require => File["$pathfirefox/mozilla.cfg"]
}

}

