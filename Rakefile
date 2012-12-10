# Parse ARGV and determine if an allowed environment has been specified
# E.g.: given `rake server production`, environment will return "production"
# Default output is "development"
def environment
  environment = 'development'

  if ARGV.last.match(/(development|production)/)
    environment = ARGV.last
  end
  
  return environment
end


# Boilerplate tasks

desc "Run the app's server in either development or production mode"
task :server do
  Rake::Task["assets:precompile"].invoke

  puts "Starting Toadstool in #{environment.upcase} mode..."

  exec "bundle exec rackup config.ru -p 3000 -E #{environment}"

  task environment.to_sym do ; end
end

# Heroku will run this task as part of the deployment process.
desc "Compile the app's Sass"
task "assets:precompile" do
  system("bundle exec compass compile")
end