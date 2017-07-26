#
# Be sure to run `pod lib lint AferoSwiftLogging.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

  s.name             = 'AferoSwiftLogging'
  s.version          = '1.1.5'
  s.summary          = 'Logging support used by Afero libs.'

  s.description      = <<-DESC
Logging support used by Afero libs.
                       DESC

  s.homepage         = 'https://github.com/KibanLabsInc/AferoSwiftLogging'
  s.author           = { 'Justin Middleton' => 'jrmiddle@afero.io' }
  s.source           = { :git => 'git@github.com:aferodeveloper/AferoSwiftLogging.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/aferodev'
  s.ios.deployment_target = '8.0'
  s.source_files = 'AferoSwiftLogging/Classes/**/*'
  s.dependency 'CocoaLumberjack', '~> 3.2'

end
