$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  pp nds
  director_index = 0
  result = {}
  while director_index < nds.count do
    total = 0 
    director_name = nds[director_index][:name]
    movie_index = 0 
    while movie_index < nds[director_index][:movies].count do 
      total += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1 
    end 
    result[director_name] = total 
    director_index += 1 
  end
  result
end
