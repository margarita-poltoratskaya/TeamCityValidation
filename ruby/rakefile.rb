require 'rubygems' 
require 'bundler/setup'  
# require your gems as usual 
require 'nokogiri'

task :default => [:test]

task :test do
    ruby File.expand_path(File.dirname(__FILE__)) + "/myruby.rb"
end