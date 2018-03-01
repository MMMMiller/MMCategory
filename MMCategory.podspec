Pod::Spec.new do |s|
  s.name         = 'MMCategory'
  s.summary      = 'A category of iOS components.'
  s.version      = '0.0.1'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'MMMille' => 'xuemingluan@gmail.com' }
  #s.social_media_url = 'http://blog.MMMille.com'
  s.homepage     = 'https://github.com/MMMille/MMCategory'
  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.source       = { :git => 'https://github.com/MMMille/MMCategory.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'MMCategory/**/*.{h,m}'
  s.public_header_files = 'MMCategory/MMCategory.h'

  s.subspec 'Vendor' do |ss|
    ss.source_files = 'MMCategory/Vendor/**/*.{h,m}'
  end

  s.subspec 'UIKit' do |ss|
    ss.source_files = 'MMCategory/UIKit/**/*.{h,m}'
  end

  s.subspec 'Foundation' do |ss|
    ss.source_files = 'MMCategory/UIKit/**/*.{h,m}'
  end

  s.libraries = 'z', 'sqlite3'
  s.frameworks = 'UIKit', 'CoreFoundation', 'CoreText', 'CoreGraphics', 'CoreImage', 'QuartzCore', 'ImageIO', 'AssetsLibrary', 'Accelerate', 'MobileCoreServices', 'SystemConfiguration'
  s.dependency 'Masonry'

end
#pod repo push MMCategory MMCategory.podspec --allow-warnings --sources='https://github.com/CocoaPods/Specs.git'