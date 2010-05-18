require 'rubygems'
require 'rake'
require File.join(File.dirname(__FILE__), 'lib', 'devise_oauth2_authenticatable', 'version')

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "devise_oauth2_authenticatable"
    gem.version      = ::Devise::Oauth2Authenticatable::VERSION
    gem.summary = %{Devise << OAuth2}
    gem.description = %{Implements OAuth2 for devises, specifically integrating with facebook Graph}
    gem.email = "benjamin@bryantmarkowsky.com"
    gem.homepage = "http://github.com/bhbryant/devise_oauth2_authenticatable"
    gem.authors = ["bhbryant"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
    
    gem.add_dependency'devise', '>= 1.0.0'
    gem.add_dependency "oauth2" 
    gem.add_dependency "json"

    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "devise_oauth2_authenticatable #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end