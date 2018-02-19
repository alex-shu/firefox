
#Firefox
-------

This module allows you to control the profile and global preferences in Firefox. Tester for a Firefox browser 58.0.1(64b)in Ubuntu 16.04 LTS. It was developed for corporate governance.
**Note**: please note that all the parameters are determined using lockPref. That is, this parameter will be set unchanged for the user.

# Depends:
-------
 
Management is made through files 
```
-- firefox\defaults\pref\all-settings.js 
-- firefox\mozilla.cfg 
```
More details can be read here http://kb.mozillazine.org/Locking_preferences.


# Parameters

## `browser startup homepage`
The default value is `undef`. Type String. To trigger, you must set the parameters of `browser startup page` value 1 

## `browser startup page`
The default value is `0`. Type Integer. 
```
 `0` - Start with a blank page (about:blank).
 `1` - Start with the web page(s) defined as the home page(s). (Default) 
 `2` - Load the last visited page.
 `3` - Resume the previous browser session.
```

## `browser shell checkDefaultBrowser`
The default value is `true`. Type Boolean. Check default browser.

## `app update auto`
The default value is `false`. Type Boolean.

## `app update enabled`
The default value is `false``. Type Boolean.

## `app update service enabled`
The default value is `files`. Type Boolean.

## `browser rights override`
The default value is `true`. Type Boolean.

## `browser startup homepage override mstone`
The default value is `ignore`. Type String. Don't show WhatsNew on first run after every update.

## `browser rights 3 shown` 
The default value is `true`. Type Boolean. Don't show 'know your rights' on first run.

## `pdfjs disabled`
The default value is `true`. Type Boolean. Disable the internal PDF viewer.

## `shumway disabled`
The default value is `true``. Type Boolean. Disable the flash to javascript converter.

## `plugins notifyMissingFlash`
The default value is `files`. Type Boolean. Don't ask to install the Flash plugin.

## `datareporting healthreport service enabled`
The default value is `false`. Type Boolean.

## `datareporting policy dataSubmissionEnabled`
The default value is `false`. Type Boolean.

## `toolkit telemetry enabled`
The default value is `files`. Type Boolean.

## `toolkit telemetry rejected`
The default value is `true`. Type Boolean.

## `toolkit telemetry prompted`
The default value is `2`. Type Integer.

## `datareporting healthreport uploadEnabled`
The default value is `false`. Type Boolean.

## `browser tabs warnOnClose`
The default value is `false`. Type Boolean. Disable warning OnClose multiple tabs.

## `network proxy type`
The default value is `5`. Type Integer. 
```
 `0` - Direct connection, no proxy.
 `1` - Manual proxy configuration.
 `2` - Proxy auto-configuration (PAC)
 `4` - Auto-detect proxy settings.
 `5` - Use system proxy settings.
```
[detail](http://kb.mozillazine.org/Network.proxy.type)

## `proxy settings`
The default value is `undef`. To specify proxy settings, specify the type of hash. possible parameters can be found in Example,to apply settings you need in the network proxy type parameter to set the value to 1 
**Note**: Important in strings should not spaces! The presence of spaces leads to an error opening Firefox!

### `Example Proxy settings`
```
  network.proxy.http:'proxy.example.com or IP address'
  network.proxy.http_port:8080
  network.proxy.no_proxies_on:'*.example.com,192.168.*.*,mail.example.com' 
  network.proxy.socks_version:4
  network.proxy.ssl:'proxy.example.com or IP address'
  network.proxy.ssl_port:8080,
  network.proxy.ftp:'proxy.example.com or IP address'
  network.proxy.ftp_port:8080
  network.proxy.socks:'proxy.example.comor IP address'
  network.proxy.socks_port:8080
```


# License

Apache License, Version 2.0

# Contact

Aleksey Shurlov sh@apdn.ru

# Support


 [Projects site](https://github.com/alex-shu/puppet-firefox)
 
