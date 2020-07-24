Pod::Spec.new do |s|
  s.name             = "MyFramework"
  s.version          = "0.1.0"
  s.summary          = "A short description of MyFramework."
  s.description      = <<-DESC
  This is CellPay Sdk which can be integrated in any ios project for third party payment with cellpay.
                       DESC

  s.homepage         = "https://github.com/aashishkarn002/CellPaySDK"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Aashish Karn" => "aashish.karn@cellcom.net.np" }
  s.source           = { :git => "https://github.com/aashishkarn002/CellPaySDK.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/aashishkarn'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*.{swift}'
  s.resource_bundles = {
    'MyFramework' => ['Pod/Classes/**/*.{storyboard,xib,xcassets,json,imageset,png}']
  }
end
