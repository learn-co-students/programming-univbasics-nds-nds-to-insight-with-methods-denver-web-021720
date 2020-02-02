$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0 
  
  counter = 0 
  while counter < director_data[:movies].count do 
    total += director_data[:movies][counter][:worldwide_gross]
    counter += 1 
  end

  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  
  counter = 0
  while counter < nds.count do 
    data = gross_for_director(nds[counter])
    result[nds[counter][:name]] = data
    counter += 1 
  end
  pp result
  result
end