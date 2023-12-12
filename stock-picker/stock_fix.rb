# take in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell.
# Days start at 0.


# buy before selling
# each element is price for a particular day
# return the pair of days that yield the greatest return (sell day - buy day)

prices = [ 17,3,6,9,15,8,6,1,10 ]


def use_fix(prices)
  min_p = prices[0]
  min_day = 0

  profit = 0


  fix_days = []

  prices.each_with_index do |price, day|
    if price < min_p
      min_p = price
      min_day = day
    end

    if profit < price - min_p
      profit = price - min_p

      fix_days = [min_day, day]
    end

  end
  fix_days
end

p use_fix(prices)