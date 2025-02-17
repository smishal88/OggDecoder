Pod::Spec.new do |s|
  s.name         = 'OggDecoder'
  s.version      = '1.0.0'
  s.summary      = 'A library for decoding Ogg files.'
  s.description  = <<-DESC
                    OggDecoder is a library that provides functionality for decoding Ogg files using the ogg and vorbis frameworks.
                   DESC
  s.homepage     = 'https://github.com/smishal88/OggDecoder'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Suliman Mishael' => 's.mishael@lassera.com' }
  s.source       = { :git => 'https://github.com/smishal88/OggDecoder.git', :tag => s.version.to_s }

  s.platform     = :ios, '14.0'
  s.source_files = 'Sources/**/*.{h,m,swift}'
  s.vendored_frameworks = [
    'ogg.xcframework',
    'vorbis.xcframework'
  ]
  s.swift_versions = ['5.5']
end