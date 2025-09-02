using Combinatorics

possibilities = collect(powerset(range(1,9)));
sums = sum.(possibilities)
counts = length.(possibilities)

function combinations_in_cage(target, count, restrictions=[])
	matching = possibilities[sums.==target .&& counts.==count]
	for r in restrictions
		matching = filter(x->!(r in x), matching)
	end
	return matching
end
