function ps(existing, start, to)
	expanded = vcat(copy.(existing), push!.(existing, start))
	if start < to
		expanded = ps(expanded, start+1, to)
	end
	return expanded
end

possibilities = ps([[]], 1, 9)[2:end];
sums = sum.(possibilities);
counts = length.(possibilities);

function combinations_in_cage(target, count, restrictions=[])
	matching = possibilities[sums.==target .&& counts.==count]
	for r in restrictions
		matching = filter(x->!(r in x), matching)
	end
	return sort(matching)
end
