Pod::Spec.new do |spec|

  spec.name                = "PhunwareFoundation"
  spec.version             = "1.0.0"
  spec.summary             = "A library currently being used by Phunware internally to provide foundation dependencies common to all our own Modules."
  spec.homepage            = "https://www.phunware.com"
  spec.license             = { :type => "Copyright", :text => "Copyright 2009-present Phunware, Inc. All rights reserved." }
  spec.author              = { "Phunware, Inc." => "https://www.phunware.com" }
  spec.social_media_url    = "https://twitter.com/Phunware"
  spec.platform            = :ios, "13.0"
  spec.source              = { :git => "https://github.com/phunware/artifact-foundation-ios.git", :tag => spec.version.to_s }
  spec.vendored_frameworks = "Frameworks/PhunwareFoundation.xcframework"
  spec.framework           = "UIKit"

end
