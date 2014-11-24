Pod::Spec.new do |s|
  s.name         = "NNFreezableView"
  s.version      = "0.1.0"
  s.summary      = "freezable view"
  s.homepage     = "https://github.com/noughts/NNFreezableView"
  s.author       = { "noughts" => "noughts@gmail.com" }
  s.source       = { :git => "https://github.com/noughts/NNFreezableView.git" }
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.platform = :ios
  s.requires_arc = true
  s.source_files = 'NNFreezableView'
end
