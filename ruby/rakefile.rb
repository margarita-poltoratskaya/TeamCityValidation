require 'rubygems' 
require 'bundler/setup'  
# require your gems as usual 
require 'nokogiri'

task :default => [:test]

task :test do
    ruby "myruby.rb"
end