Pod::Spec.new do |s|
  s.name         = 'OggDecoder'
  s.version      = '1.0.0' 
  s.summary      = 'A library for decoding Ogg files.'
  s.description  = <<-DESC
                    OggDecoder is a library that provides functionality for decoding Ogg files using the ogg and vorbis frameworks.
                   DESC
  s.homepage     = 'https://github.com/smishal88/OggDecoder.git' # Update this with your repo URL
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Suliman Mishael' => 's.mishael@classera.com' }
  s.source       = { :git => 'https://github.com/smishal88/OggDecoder.git', :tag => s.version.to_s }

  # Platform support
  s.platform     = :ios, '14.0'

  # Source files
  s.source_files = 'Sources/OggDecoderObjC/**/*.{h,m,swift}'

  # Binary dependencies (ogg and vorbis frameworks)
  s.vendored_frameworks = [
    'ogg.xcframework',
    'vorbis.xcframework'
  ]

  # Test specifications
  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'Tests/OggDecoderTests/**/*.{h,m,swift}'
    test_spec.resources = 'Tests/OggDecoderTests/TestResources/**/*'
  end

  # Swift version
  s.swift_versions = ['5.5']
end