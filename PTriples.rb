class Triple
	attr_accessor :a, :b, :c
	def initialize(a, b, c)
		@a = a
		@b = b
		@c = c
	end

	def to_s
		"#{@a} + #{@b} = #{@c}"
	end
end

printf "Max: "
max = gets.chomp.to_i

triples = []
a = 1
while a < max
	b = a
	while b < max
		c = a ** 2 + b ** 2
		c = Math.sqrt(c)
		if c == c.to_i
			triples << Triple.new(a, b, c.to_i)
		end
		b += 1
	end
	a += 1
end

puts triples.join("\n")