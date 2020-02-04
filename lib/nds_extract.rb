$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  #pp director_data
  vm = director_data
  i = 0
  total = 0
  result = []
  while i < vm.length do 
    j = 0
    while j < vm[i][:movies].length do 
      total += vm[i][:movies][j][:worldwide_gross]
      j += 1
    end
    result << total
    total = 0
    i += 1
  end
  return result
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  total = gross_for_director(director_data)
  i = 0
  while i < nds.length do 
    result[nds[i][:name]] => total[i]
  end
  return result

end


