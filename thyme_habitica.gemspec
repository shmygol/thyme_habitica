Gem::Specification.new do |s|
  s.name        = 'thyme_habitica'
  s.version     = '1.0.0'
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['MIT']
  s.authors     = ['Ilya Shmygol']
  s.email       = ['ishmygol@gmail.com']
  s.homepage    = 'https://github.com/trilliput/thyme_habitica'
  s.summary     = "Habitica plugin for thyme"
  s.description = <<-EOF
    A plugin for 'thyme'  pomodoro timer, which scores tasks every time a pomodoro is successfully completed.
EOF
 
  s.required_rubygems_version = '>= 1.3.6'
  s.add_dependency 'rest-client'
 
  s.files        = Dir.glob('*.md') + Dir.glob('lib/**/*.rb')
end
