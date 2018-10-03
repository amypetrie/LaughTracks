require './app/models/comedian.rb'
require './app/models/special.rb'
require 'activerecord-import/base'

comedian = Comedian.create(...)
special_1 = comedian.specials.create(...)
special_2 = comedian.special.create(...)

puts "added #{comedian.specials.count} specials for #{comedian.name}."
