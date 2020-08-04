require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "10.0"

  s.source       = { :git => "https://github.com/Moogol/react-native-sip2.git", :tag => "v#{s.version}" }
  s.source_files = "ios/**/*.{h,m}"
  s.vendored_frameworks = 'ios/VialerPJSIP.framework'
  s.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1' }
  s.dependency 'React'
  s.dependency 'Vialer-pjsip-iOS'
end