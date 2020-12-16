require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



illicit_cult = Cult.new "Illicit Syntax", "Denver", 2020/12/16, "Congrats"
# name, age, life_motto, 

bammargera = Follower.new "Bam Margera", 47, "Welcome to JackAss!"











binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
