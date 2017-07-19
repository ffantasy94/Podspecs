Pod::Spec.new do |s|

  s.name         = "AferoSofthub"
  s.module_name  = "AferoSofthub"
  s.version      = "1.0.1"
  s.summary      = "Afero hub library"
  s.description  = "Softhub support for Afero devices."
  s.homepage     = "https://github.com/KibanLabsInc/hubby"
  s.license      = "Proprietary"
  s.author             = { "Stephen Sewerynek" => "stephen@kiban.io" }

  s.ios.deployment_target = "8.4"
  s.osx.deployment_target = "10.10"
  s.source       = { :git => "git@github.com:aferodeveloper/hubby.git", :tag => "aferosofthub-podspec-#{s.version}" }

  s.source_files = "pkg/src/utils.cpp",
                  "pkg/src/PeripheralManager.cpp",
                  "pkg/src/WebSocket.cpp",
                  "pkg/src/Conclave.cpp",
                  "pkg/src/HubConclave.cpp",
                  "pkg/src/Hubby.cpp",
                  "pkg/src/EventTask.cpp",
                  "pkg/src/DeviceUpdater.cpp",
                  "pkg/src/SoftHubAuthenticator.cpp",
                  "pkg/src/OpenSSLHostnameValidation.cpp",
                  "pkg/src/SoftHubProduct.cpp",
                  "pkg/src/Certificates.cpp",
                  "pkg/src/DeviceProfile.cpp",
                  "pkg/src/WifiCredentialManager.cpp",
                  "pkg/src/WifiCredentialMessages.cpp",
                  "pkg/src/Account.cpp",
                  "pkg/src/profile/mobile/InternalProfile.cpp",
                  "pkg/src/profile/InternalProfile.h",
                  "pkg/src/SoftHubSetup.cpp",
                  "pkg/src/Math256.cpp",
                  "pkg/src/*.{h,hpp}",
                  "pkg/src/cocoa"

  s.preserve_paths = "thirdparty-ios"

  s.exclude_files = "**/main.cpp"
  s.public_header_files = "pkg/src/cocoa/AferoSofthub.h"

  MY_LIB_ROOT = "${PODS_TARGET_SRCROOT}/thirdparty-ios"
  MY_HEADER_ROOT = "${PODS_TARGET_SRCROOT}/thirdparty-ios"

  header_search_paths = '$(inherited) ' + [
    'json-c-0.12/ios/include',
    'curl-7.50.3/ios/prebuilt-with-ssl/include',
    'libevent-2.0.22-stable/ios/include',
    'openssl-1.0.1u/ios/include'
    ].map { |p| MY_HEADER_ROOT + "/" + p }.join(" ")

  library_search_paths = '$(inherited) ' + [
    'curl-7.50.3/ios/prebuilt-with-ssl',
    'json-c-0.12/ios/libs',
    'libevent-2.0.22-stable/ios/lib',
    'openssl-1.0.1u/ios/lib',
    'zlib-1.2.8/ios/lib'
    ].map { |p| MY_LIB_ROOT + "/" + p }.join(" ")

  other_frameworks = ['CoreBluetooth', 'SystemConfiguration']
  other_ldflags = '$(inherited) -framework ' + other_frameworks.join(' -framework ') + ' -ljson-c -lssl -lcrypto -lcurl -lz -levent -levent_core -levent_extra -levent_pthreads -lstdc++'

  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => header_search_paths,
    'LIBRARY_SEARCH_PATHS' => library_search_paths,
    'OTHER_LDFLAGS' => other_ldflags,
    }

end
