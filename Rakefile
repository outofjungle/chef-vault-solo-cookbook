require 'rspec/core/rake_task'

specfiles = 'spec/**/*_spec.rb'

RSpec::Core::RakeTask.new(:spec) do | task |
  task.pattern = specfiles
  task.rspec_opts = '--format nested'
end

task :default => :spec
