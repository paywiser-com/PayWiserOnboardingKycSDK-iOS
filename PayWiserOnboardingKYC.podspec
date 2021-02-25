Pod::Spec.new do |s|
  s.name             = 'PayWiserOnboardingKYC'
  s.version          = '3.0.32'
  s.summary          = 'KYC user identification and verification.'

  s.description      = 'PayWiser Onboarding KYC SDK for iOS is a service that allows third-party apps to easily include user identification and verification into their iOS apps. This service identifies the user using their official ID documents through a video in real-time.'

  s.homepage         = 'https://www.paywiser.com'
  s.license          = { :type => 'Copyright', :text => 'Copyright 2020 Intech d.o.o. All rights reserved.\n' }
  s.author           = { 'tjasajan' => 'tjasa@intech.si' }
  s.source           = { :http => 'https://github.com/paywiser-com/PayWiserOnboardingKycSDK-iOS/archive/v3.0.32.tar.gz' }

  s.swift_versions = ['5']
  
  s.ios.deployment_target = '12.0'

  s.resource_bundles = {
     'PayWiserOnboardingKYC' => 'PayWiserOnboardingKYC.framework/*.{storyboardc,nib,car,lproj}'
  }
  s.resources = 'PayWiserOnboardingKYC.framework/*.{storyboardc,nib,car,lproj}'

  s.source_files = "PayWiserOnboardingKYC.framework/Headers/*.h"
  s.public_header_files = "PayWiserOnboardingKYC.framework/Headers/*.h"
  s.module_map = "PayWiserOnboardingKYC.framework/Modules/module.modulemap"
  s.vendored_frameworks = "PayWiserOnboardingKYC.framework"

  
  s.frameworks = 'UIKit'
  s.dependency 'PhoneNumberKit', '3.3.1'
  s.dependency 'CountryPickerView', '3.1.3'
  s.dependency 'VideoID', '7.1.7'
  
  s.pod_target_xcconfig = {
      'ENABLE_BITCODE' => 'No',
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  
end

