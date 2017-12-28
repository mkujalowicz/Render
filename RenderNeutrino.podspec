#
# Be sure to run `pod lib lint Render.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "RenderNeutrino"
  s.version          = "1.0.0"
  s.summary          = "Swift and UIKit a la React."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  React-inspired swift library for writing UIKit UIs.
                       DESC

  s.homepage         = "https://github.com/alexdrone/Render"
  s.screenshots      = "https://github.com/alexdrone/Render/raw/master/docs/logo_new.png"
  s.license          = 'MIT'
  s.author           = { "Alex Usbergo" => "alexakadrone@gmail.com" }
  s.source           = { :git => "https://github.com/alexdrone/Render.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/alexdrone'

  s.ios.deployment_target = '10.0'
  s.default_subspec = 'Neutrino'
  
  s.subspec 'Neutrino' do |neutrino|
    neutrino.dependency       'RenderNeutrino/Core'
  end
  
  s.subspec 'Core' do |core|
    core.source_files   = 'Neutrino/src/**/*', 'Neutrino/stylesheet/**/*', 'Neutrino/components/**/*', 'Neutrino/stylesheet/**/*', 'Neutrino/deps/yoga/**/*', 'Neutrino/deps/RenderInspectorHook.swift'
	core.dependency       'RenderNeutrino/Yaml'
	core.dependency       'RenderNeutrino/Expression'
  end
  
  s.subspec 'Yaml' do |yaml|
    yaml.source_files   = 'Neutrino/deps/yaml/**/*'
  end
  
  s.subspec 'Expression' do |expr|
    expr.source_files   = 'Neutrino/deps/expr/**/*'
  end
  
end
