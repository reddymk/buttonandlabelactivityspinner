Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "ButtonAndLabelActivitySpinner"
s.summary = "Button and Label with Activity Spinner"
s.requires_arc = true

s.version = "0.1.0"

s.license = { :type => "MIT", :file => "LICENSE" }

s.author = { "Manish Reddy" => "kmanish1191@gmail.com" }

s.homepage = "https://bitbucket.org/reddymk/buttonandlabelactivityspinner"

s.source = { :git => "https://bitbucket.org/reddymk/buttonandlabelactivityspinner.git", :tag => "#{s.version}"}


s.source_files = "ButtonAndLabelActivitySpinner/**/*.{swift}"


end