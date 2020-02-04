$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = {}
  movies = director_data[:movies]
  dir_name = director_data[:name]
  inner_index = 0
  gross = 0
  while inner_index < movies.length do
    gross += movies[inner_index][:worldwide_gross]
    inner_index += 1
  end  
  total[dir_name] = gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  index = 0
  while index < nds.length do
    result[nds[index][:name]] = gross_for_director(nds[index])
    index += 1
  end
  result
end

pp directors_database