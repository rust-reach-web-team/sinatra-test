begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

desc "Compiles SASS and runs server"
task :server do
  sh "sass assets/styles/app.scss assets/styles/app.css"
  sh "ruby app.rb"
end

task default: :server
