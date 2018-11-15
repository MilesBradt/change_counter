class Coins

  def initialize()


    @coins = {
      1 => "penny",
      2 => "pennies",
      5 => "nickel",
      10 => "dime",
      25 => "quarter"
    }

  end

  def count_change(change)
    output = ""
    coin_amount = 0
    until change == 0 do
      if change >= 25
        coin_amount += 1
        change -= 25
        if coin_amount > 1
        output = coin_amount.to_s + " " + @coins.fetch(25) + "s"
        else
        output = coin_amount.to_s + " " + @coins.fetch(25)
        end
      elsif change >= 10
        coin_amount += 1
        change -= 10
        if coin_amount > 1
        output = coin_amount.to_s + " " + @coins.fetch(10) + "s"
        else
        output = coin_amount.to_s + " " + @coins.fetch(10)
        end
      elsif change >= 5
        coin_amount += 1
        change -= 5
        if coin_amount > 1
        output = coin_amount.to_s + " " + @coins.fetch(5) + "s"
        else
        output = coin_amount.to_s + " " + @coins.fetch(5)
        end
      elsif change >= 1
        coin_amount += 1
        change -= 1
        if coin_amount > 1
        output = coin_amount.to_s + " " + @coins.fetch(2)
        else
        output = coin_amount.to_s + " " + @coins.fetch(1)
        end
      end
    end
    return output
  end
end
