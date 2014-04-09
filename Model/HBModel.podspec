Pod::Spec.new do |s|
  s.name         = 'HBModel'
  s.version      = '1.0.0'                                                                  
  s.summary      = 'A library that retrieves the current price of your favorite ice cream.' 
  s.author       = { 'Eloy Durán' => 'eloy.de.enige@gmail.com' }                            
  s.source       = { :git => 'https://github.com/alloy/ice-pop.git', :tag => '0.4.2' }      
  
  s.source_files = 'Classes/*.{h,m}'
  s.prefix_header_contents = '#import "ObjectiveCGenerics.h"'
  
  s.resource  = "HBModel.podspec"
  
  s.dependency 	'MyiOSHelpers', '~>0.0.1'
  
  s.dependency  'ObjectiveCGenerics'
  
  # s.ios.frameworks = 'CFNetwork', 'Security', 'UIKit', 'CoreLocation'
  
  # s.ios.xcconfig = {'OTHER_LDFLAGS' => '-all_load'}

end
