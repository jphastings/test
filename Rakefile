task :default => :test
task :test => :spec

begin
  require 'rspec/core/rake_task'

  if !defined?(RSpec)
    puts "spec targets require RSpec"
  else
    desc "Run all examples"
    RSpec::Core::RakeTask.new(:spec) do |t|
      t.pattern = 'spec/**/*_spec.rb'
      t.rspec_opts = ['-cfd']
    end
  end
rescue LoadError
  task :spec do
    $stderr.puts "RSpec is not installed on this system. If you wish to conduct tests, please install it."
  end
end