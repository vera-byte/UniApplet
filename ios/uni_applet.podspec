Pod::Spec.new do |s|
  s.name             = 'uni_applet'
  s.version          = '0.0.1'
  s.summary          = 'uni Mini Program SDK'
  s.description      = <<-DESC
 is a framework built for native Apps to run mini program front-end projects developed based on uni-app, thereby helping native Apps quickly acquire the capabilities of Mini Programs
                       DESC
  s.homepage         = 'https://github.com/vera-byte/flutter_unimp'
  s.license          = { :file => '../LICENSE', :type => 'MIT' }
  s.author           = { 'vera-byte' => 'xykj@email.metoyun.com' }
  s.source           = { :git => 'https://github.com/vera-byte/flutter_unimp.git', :tag => s.version.to_s }

  # 添加unimp依赖的系统库
  s.frameworks = 'JavaScriptCore','CoreMedia','MediaPlayer','AVFoundation','AVKit','GLKit','OpenGLES','CoreText','QuartzCore','CoreGraphics','QuickLook','CoreTelephony'
  # 添加unimp依赖的系统库
  s.libraries = 'c++','iconv'

  # Specify source files
  s.source_files     = 'Classes/**/*.{swift,m}','Classes/UniMPSDK/Core/Headers/*.h'

  # Specify resources
  s.resources        = 'Classes/UniMPSDK/Core/Resources/*.{js,bundle,ttf,png}',
                        'Classes/UniMPSDK/Features/Resources/*.{bundle,png}'
 
  # Specify vendored libraries
  s.vendored_libraries = 'Classes/UniMPSDK/Core/Libs/*.a',
  #                        'Classes/UniMPSDK/Features/Libs/*.a'

  # Specify vendored frameworks
  s.vendored_frameworks = 'Classes/UniMPSDK/Features/Libs/*.framework','Classes/UniMPSDK/Core/Libs/storage.framework'

  # Specify public header files
  s.public_header_files = 'Classes/UniMPSDK/Core/Headers/*.h'

  # Specify dependencies
  s.dependency 'Flutter'

  # Platform specification
  s.platform = :ios, '12.0'

  # Exclude architectures
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES',
                            'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
                            'OTHER_LDFLAGS' => '-ObjC' }

  # Swift version
  s.swift_version = '5.0'
end
