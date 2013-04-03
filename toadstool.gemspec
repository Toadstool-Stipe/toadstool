Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.0.0.7"
  s.date = "2013-04-03"

  # Gem Details
  s.name = "toadstool"
  s.authors = ["Dale Sande", "Jed Foster"]
  s.summary = %q{Toadstool styleguide app}
  s.description = %q{Toadstool styleguide app.}
  s.email = "dale.sande@gmail.com"
  s.homepage = "https://github.com/Anotheruiguy/toadstool"

  # Gem Files
  s.bindir      = 'lib/bin'
  
  s.executables        = ['toadstool']
  s.files = Dir['lib/**/*']

  # Gem Bookkeeping
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("sinatra")
  s.add_dependency("sinatra-partial")
  s.add_dependency("thor")
  s.add_dependency("compass", [">= 0.12"])
  s.add_dependency("sass", [">=3.2.1"])
  s.add_dependency("stipe", [">=0.0.5.7.4"])
  
end