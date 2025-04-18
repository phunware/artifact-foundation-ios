Pod::Spec.new do |spec|
  spec.name                = 'PhunwareFoundation'
  spec.version             = '1.1.0'
  spec.summary             = 'A library currently being used by Phunware internally to provide foundation dependencies common to all our own Modules.'
  spec.homepage            = 'https://www.phunware.com'
  spec.license             = { :type => 'Copyright', :text => 'Copyright 2009-present Phunware, Inc. All rights reserved.' }
  spec.author              = { 'Phunware, Inc.' => 'https://www.phunware.com' }
  spec.social_media_url    = 'https://twitter.com/Phunware'
  spec.platform            = :ios, '15.5'
  spec.source              = { :git => 'https://github.com/phunware/artifact-foundation-ios.git', :tag => spec.version.to_s }
  spec.framework           = 'UIKit'
  spec.cocoapods_version   = '>= 1.12.0'

  spec.default_subspecs = 'Core'

  spec.subspec 'Core' do |subspec|
    subspec.dependency 'PWCore', '~> 3.13.0'

    subspec.vendored_frameworks = 'Frameworks/PhunwareFoundation.xcframework'
  end


  ## Frameworks linked with static libraries
  spec.subspec 'CoreStaticLinks' do |subspec|
    subspec.dependency 'PWCore/CoreStaticLinks', '~> 3.13.0'

    subspec.vendored_frameworks = 'FrameworksStaticLinks/PhunwareFoundation.xcframework'    
  end

end
