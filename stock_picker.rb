def stock_picker(stocks)
	pairs = {}

	stocks.each do |buy|
		stocks.each do |sell|
			next if stocks.index(sell) < stocks.index(buy)
			pairs[[stocks.index(buy), stocks.index(sell)]] = sell - buy
		end
	end
	
	print pairs.key(pairs.values.max)
end