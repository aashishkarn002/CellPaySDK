
Pod::Spec.new do |s|
  s.name         = "CellPaySDK"
  s.version      = "1.0.0"
  s.summary      = "The cellpay sdk is written in Swift which allow you make third party payment."
  s.description  = <<-DESC
  The cellpay sdk is written in Swift which allow you make third party payment. The process inculdes login, select bank and make payment.
                           DESC
  s.homepage     = "https://github.com/aashishkarn002/CellPaySDK"
  s.platform     = :ios, "11.0"
  s.requires_arc = true
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.source       = { :git => 'https://github.com/aashishkarn002/CellPaySDK.git', :tag => s.version.to_s }
 
  s.source_files = 'CellPaySDK/Classes/**/*'
  s.resources = 'CellPaySDK/Assets.xcassets/*.*'
  s.framework = 'UIKit'
  s.swift_version = '5.0'
  
  s.author = { "Aashish Karn" => "aashish.karn@cellcom.net.np" }

s.subspec 'MaterialComponents' do |subspec|
  subspec.dependency 'MaterialComponents/Cards'
  subspec.dependency 'MaterialComponents/TextFields'
  subspec.dependency 'MaterialComponents/Buttons'
  subspec.dependency 'MaterialComponents/Snackbar'
  subspec.source_files = 'MaterialComponents/**/*'
end
s.subspec 'MDFInternationalization' do |subspec|
  subspec.dependency 'MaterialComponents/Cards'
  subspec.dependency 'MaterialComponents/TextFields'
  subspec.dependency 'MaterialComponents/Buttons'
  subspec.dependency 'MaterialComponents/Snackbar'
  subspec.source_files = 'MDFInternationalization/*.*'
end
s.subspec 'MDFTextAccessibility' do |subspec|
  subspec.dependency 'MaterialComponents/Cards'
  subspec.dependency 'MaterialComponents/TextFields'
  subspec.dependency 'MaterialComponents/Buttons'
  subspec.dependency 'MaterialComponents/Snackbar'
  subspec.source_files = 'MDFTextAccessibility/*.*'
end
 s.subspec 'DropDown' do |subspec|
   subspec.dependency 'DropDown'
   subspec.source_files = 'MaterialComponents/**/*'
 end
 s.subspec 'KafkaRefresh' do |subspec|
   subspec.dependency 'KafkaRefresh'
   subspec.source_files = 'KafkaRefresh/**/*'
 end
 s.subspec 'SPFakeBar' do |subspec|
   subspec.dependency 'SPFakeBar'
   subspec.source_files = 'SPFakeBar/**/*'
 end
 s.subspec 'SPStorkController' do |subspec|
   subspec.dependency 'SPStorkController'
   subspec.source_files = 'SPStorkController/**/*'
 end
 end
 
