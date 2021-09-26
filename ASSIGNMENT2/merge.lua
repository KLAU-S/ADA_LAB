--[[ Implementation of MergeSort --]]

n = 3000
  aTable = {}
  i=1
  --math.randomseed(os.time())
  while(i<n+1)do
     table.insert(aTable, 1,  math.random(n))
      i = i+1
  end

-- main mergesort algorithm
function mergeSort(aTable, p, r)
	if p < r then
		local q = math.floor((p + r)/2)
		mergeSort(aTable, p, q)
		mergeSort(aTable, q+1, r)
		merge(aTable, p, q, r)
	end
end

-- merge an array split from p-q, q-r
function merge(aTable, p, q, r)
	local n1 = q-p+1
	local n2 = r-q
	local left = {}
	local right = {}
	
	for i=1, n1 do
		left[i] = aTable[p+i-1]
	end
	for i=1, n2 do
		right[i] = aTable[q+i]
	end
	
	left[n1+1] = math.huge
	right[n2+1] = math.huge
	
	local i=1
	local j=1
	
	for k=p, r do
		if left[i]<=right[j] then
			aTable[k] = left[i]
			i=i+1
		else
			aTable[k] = right[j]
			j=j+1
		end
	end
end

mergeSort(aTable, 1, #aTable)

for i=1,#aTable do
		io.write(aTable[i] .. ", ")
    end