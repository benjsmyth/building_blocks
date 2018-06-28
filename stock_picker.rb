def stock_picker(stocks)
	pairs = {}

	stocks.each do |base|
		stocks.each do |value|
			next if stocks.index(value) < stocks.index(base)
			pairs[[stocks.index(base), stocks.index(value)]] = value - base
		end
	end
	
	print pairs.key(pairs.values.max)
end