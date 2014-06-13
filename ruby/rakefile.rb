require 'rubygems' 
require 'bundler/setup'  
# require your gems as usual 
require 'nokogiri'

task :default => [:wonderful_world]

task :wonderful_world do
    ruby File.expand_path(File.dirname(__FILE__)) + "/myruby.rb"
end

  task :turn_off_alarm do
    puts "Turned off alarm. Would have liked 5 more minutes, though."
  end
 
  task :groom_myself do
    puts "Brushed teeth."
    puts "Showered."
  end
 
  task :make_coffee do
    cups = ENV["COFFEE_CUPS"] || 2
    puts "Made #{cups} cups of coffee. Shakes are gone."
  end
 
  task :feed_fish do
    puts "Fish fed."
  end
 
  task :ready_for_the_day => [:turn_off_alarm, :groom_myself, :make_coffee, :feed_fish] do
    puts "Ready for the day"
  end
  
task :wonderful_world => :ready_for_the_day

task :manipulate_files do
  mkdir 'new_dir'
  touch 'new_dir/file.txt'
  copy File.expand_path(File.dirname(__FILE__)) + "/myruby.rb", "new_dir/copy_myruby.rb"
end