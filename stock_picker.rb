def stock_picker(prices)
	days = []
	greatest_profit = 0
	buy_day = 0
	sell_day = 0

	prices.each_with_index do |buy, b_index|
		prices.drop(1).each_with_index do |sell, s_index|
			if (sell - buy) > greatest_profit
				greatest_profit = sell - buy
				buy_day = b_index
				sell_day = s_index + 1
			end
		end
	end
	days << buy_day << sell_day

	p days
end

stock_picker([12,8,15,22,18,15,21])
