Pod::Spec.new do |s|

  s.name         = "AferoSofthub"
  s.module_name  = "AferoSofthub"
  s.version      = "1.9.0"
  s.summary      = "Afero Softhub Library (hubby-ios-release 1.0.446 release)"
  s.description  = "Softhub support for Afero devices."
  s.homepage     = "https://github.com/aferodeveloper/AferoIOSSofthub"
  s.license      = "ARM Permissive Binary"
  s.author             = { "Afero, Inc." => "developer@afero.io" }

  s.ios.deployment_target = "11.0"
  s.source       = {
    :git => "https://github.com/aferodeveloper/AferoIOSSofthub.git", :tag => s.version
  }

  s.prepare_command = '/usr/bin/unzip AferoSofthub.zip' 

  s.weak_frameworks = 'CoreBluetooth', 'SystemConfiguration'
  s.vendored_frameworks = "AferoSofthub.framework" 

end
