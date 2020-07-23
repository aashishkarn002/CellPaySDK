#
#  Be sure to run `pod spec lint CellPaySDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "CellPaySDK"
  s.version      = "1.0.0"
  s.summary      = "The cellpay sdk is written in Swift which allow you make third party payment."
  s.description  = <<-DESC
  The cellpay sdk is written in Swift which allow you make third party payment. The process inculdes login, select bank and make payment.
                           DESC
  s.homepage     = "https://github.com/aashishkarn002/CellPaySDK"
  s.platform     = :ios, "11.0"
  s.requires_arc = true
  s.license      = "MIT"
  s.source       = { :path => '.' }
  s.subspec 'Core' do |core|
  core.source_files = 'CellPaySDK/**/*'
  core.resources = 'CellPaySDK/Assets/*.png'
  s.frameworks = "MaterialComponents/Cards", "MaterialComponents/TextFields","MaterialComponents/Buttons","MaterialComponents/Snackbar","DropDown","SPStorkController","KafkaRefresh","SPFakeBar"
  s.author = { "Aashish Karn" => "aashish.karn@cellcom.net.np" }
  end

 
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"



  
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


 

  


  
  
  #s.source_files  = "Classes", "Classes/**/*.{h,m}"
  #s.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"


  # spec.framework  = "SomeFramework"
  #

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
