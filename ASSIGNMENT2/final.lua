--Bubbling principle: compare adjacent elements, if the first one is greater than the second, swap them two.

n = 1000
  aTable = {}
  i=1
  math.randomseed(os.time())
  while(i<n+1)do
     table.insert(aTable, 1,  math.random(n))
      i = i+1
  end

function ChangeData(k)
    if aTable[k]<aTable[k+1] then
        aTable[k],aTable[k+1]=aTable[k+1],aTable[k]
    end
end
b=1--Cycles
StatrIndex=1
--Recursively implement bubble function
function Recursion(k)
    if k>#aTable-b then--The exchange is complete and the next cycle is executed. 
        --Increase the number of cycles i by 1, and reset the exchange index k to 1
        b=b+1
        k=1
    end
    ChangeData(k)--Swap element function
   return b>=#aTable or Recursion(k+1)--Increment b as long as #aTable Control the recursion and add end conditions. 
   --i<#aTable and recursion(k+1) is also possible
end
f=Recursion(StatrIndex);--Call functions
print(f)
a = #aTable
while #aTable do
    io.write(aTable[a],"\n")
    a=a-1
end
