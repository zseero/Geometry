def generate(outof, length = outof.length, sofar = [])
	p = []
	for o in outof
		a = sofar + [o]
		r = generate(outof, length, a) if sofar.length < (length - 1)
		if r
			p += r
		else
			p << a
		end
	end
	p
end

possibles = generate([0, 1, 2], 6)
possibles.delete_if do |ary|
	ary[0] != ary[2] || ary[1] == ary[3]
end

lines = []
possibles.each {|ary| lines << ary.join(', ')}
puts lines.join("\n")
puts possibles.length