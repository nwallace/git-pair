require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "edgecase-git-pair"
    gem.summary = "Configure git to commit as more than one author"
    gem.description = "A git porcelain for pair programming. Changes " +
                      "git-config's user.name and user.email settings so you " +
                      "can commit as more than one author."
    gem.email = "adam@edgecase.com"
    gem.homepage = "http://github.com/edsinclair/git-pair"
    gem.authors = ["Chris Kampmeier", "Adam McCrea", "Jon Distad", "Tim Gildea", "Eirik Dentz Sinclair"]
    gem.add_development_dependency "cucumber", ">= 0"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

begin
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:features)

  task :features => :check_dependencies
rescue LoadError
  task :features do
    abort "Cucumber is not available. In order to run features, you must: sudo gem install cucumber"
  end
end

task :default => :features

# Don't print commands when shelling out (for example, running Cucumber)
RakeFileUtils.verbose(false)

