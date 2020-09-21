#
# Be sure to run `pod lib lint TQCategotyKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TQCategotyKit'
  s.version          = '6'
  s.summary          = 'A short description of TQCategotyKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Mr-Tong1992/TQCategotyKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mr-Tong1992' => 'qiang@syswin.com' }
  s.source           = { :git => 'https://github.com/Mr-Tong1992/TQCategotyKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  s.dependency 'Masonry'
  s.dependency 'SDWebImage'
  s.dependency 'MBProgressHUD'

  if ENV['use_code'] or ENV[s.name+'_use_code']
      puts '-------------------------------------------------------------------'
      puts "Notice: #{s.name} is source now"   #打印信息，修改库名称为自己的库名
      puts '-------------------------------------------------------------------'
      s.source_files = 'TQCategotyKit/Classes/**/*'
  else #Framework模式
      puts '-------------------------------------------------------------------'
      puts "Notice:#{s.name} is binary now"   #打印信息，修改库名称为自己的库名
      puts '-------------------------------------------------------------------'
      s.ios.vendored_frameworks = 'Frameworks/*.framework'   #指定当前库依赖的Framework
  end


  
  # s.resource_bundles = {
  #   'TQCategotyKit' => ['TQCategotyKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
