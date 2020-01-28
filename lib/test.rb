$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
nds = directors_database
def gross_for_director(dh)   #dh stands for director hash
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#nds = directors_database
#pp nds
i=0
t=0
#pp nds
while i < dh[:movies].length do
  t = t+dh[:movies][i][:worldwide_gross]
  i=i+1
end
result=t
return result
end
# { directorOne => allTheMoneyTheyMade, ... }
a = gross_for_director(nds[1])
puts a


def directors_totals(nds)
  dtotals=[]
  names=[]
  result = {}
  i=0
  while i<nds.length do
    dtotals[i]=gross_for_director(nds[i])
    names[i]=nds[i][:name]
    result[names[i]] = dtotals[i]
    i=i+1
end
return result
end
a= directors_totals(nds)
puts a




#pp nds
#result={}
#nod = nds[dname].length #number of directors_database
#i=0# Director index

#puts a
