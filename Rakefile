require 'rubygems'

require 'cucumber'
require 'cucumber/rake/task'

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end

task :default => [ :spec, :features ]