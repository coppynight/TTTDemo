#
# Be sure to run `pod lib lint TTTDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TTTDemo'
  s.version          = '0.1.0'
  s.summary          = 'How to create your first simple pod!!!'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/coppynight/TTTDemo.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'XiaoKai' => 'xiaokai@rd.netease.com' }
  s.source           = { :git => 'https://github.com/coppynight/TTTDemo.git', :tag => s.version.to_s }
  # s.social_media_url = 'http://weibo.com/u/1349391782'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TTTDemo/Classes/**/*.{h,m}'
  s.xcconfig = { 'ENABLE_BITCODE' => 'NO' }
  s.resource_bundles = {
   'TTTDemoUI' => ['TTTDemo/Assets/*.png']
  }

  s.frameworks = 'SystemConfiguration', 'CoreTelephony'
  s.vendored_libraries = 'TTTDemo/Classes/Weixin/libWeChatSDK.a'
  s.libraries = 'c++', 'sqlite3', 'z'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
