require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'react-native-sip'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/FastPBX/react-native-sip.git", :tag => "v#{s.version}" }
  s.source_files = "ios/**/*.{h,m}"
  s.vendored_frameworks = 'ios/VialerPJSIP.framework'
  s.dependency 'React'
  s.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1',
    'USE_HEADERMAP' =>  'NO'    
	}
  
end
