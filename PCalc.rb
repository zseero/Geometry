def calc(n)
	if n.odd?
		x = (n - 1) / 2
		[n, x * n + x, x * n + x + 1]
	else
		x = (n ** 2) / 2
		[n, (x - 2) / 2, (x + 2) / 2]
	end
end

while true
	printf "Input: "
	n = gets.chomp.to_i
	puts calc(n).join(', ')
end