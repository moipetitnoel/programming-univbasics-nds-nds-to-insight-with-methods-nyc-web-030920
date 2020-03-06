$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  counter = 0
  #gross = directors_database[:movies].count()
 # len = directors_database[director_data][:movies].length
#  while counter < len do 
#  gross = directors_database[0][:movies][0][:worldwide_gross]
#  end

#  counter += 1
 # while
 new = 0
 limit = director_data[:movies].size
 while counter < limit do
   new += director_data[:movies][counter][:worldwide_gross]
   
   counter += 1
end  
  
  new
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  gross_for_director(nds)
  result = {"Stephen Spielberg" => gross_for_director(nds)}
  
  nil
  result
end
#, "Russo Brothers" => rus, "James Cameron" => jam, "Spike Lee" => spi, "Wachowski Siblings" => wac, "Robert Zemeckis" => rob, "Quentin Tarantino" => que, "Martin Scorsese" => mar, "Francis Ford Coppola" => fra