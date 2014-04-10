Pod::Spec.new do |s|
  s.name         = 'PZController'
  s.version      = '1.0.0'                                                                  
  s.summary      = 'A library that retrieves the current price of your favorite ice cream.' 
  s.author       = { 'Eloy Durán' => 'eloy.de.enige@gmail.com' }                            
  s.source       = { :git => 'https://github.com/alloy/ice-pop.git', :tag => '0.4.2' }      
  
  s.source_files = 'Classes/*.{h,m}'
  s.prefix_header_contents = '#import "PZModel.h"', '#import <CoreLocation/CoreLocation.h>'
  
  s.resource  = "PZController.podspec"
  
  s.dependency  'PZModel'
#  s.dependency 	'MyiOSHelpers', '~>0.0.1'
#  s.dependency  'MyMeteor'
#  s.dependency  'TwilioSDK'
  
  s.ios.framework = 'CoreLocation'
=begin
  s.subspec "Network" do |network|
    network.source_files = 'Classes/Network/*.{h,m}'
  end
  s.subspec "Post" do |post|
      post.source_files = 'Classes/Post/*.{h,m}'
  end
  
  s.subspec "SuperNetwork" do |super_network|
    super_network.source_files = 'Classes/SuperNetwork/*.{h,m}'
  end
=end
end
