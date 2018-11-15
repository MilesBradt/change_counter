class Coins
  def initialize()

    @coins = {
      1 => "penny",
      5 => "nickle",
      10 => "dime",
      25 => "quarter"
    }

  end

  def count_change(change)
    coin_amount = 0
    if change - 25 <= 25
      coin_amount += 1
      coin_amount.to_s + " " + @coins.fetch(25)
    end
  end

end
