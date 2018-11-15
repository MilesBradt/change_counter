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
    quarter_amount = 0
    dime_amount = 0
    nickel_amount = 0
    penny_amount = 0
    until change == 0 do
      if change >= 25
        binding.pry
        quarter_amount += 1
        change -= 25
        if quarter_amount > 1
        output = quarter_amount.to_s + " " + @coins.fetch(25) + "s"
        else
        output = quarter_amount.to_s + " " + @coins.fetch(25)
        end
      elsif (change >= 10) & (change < 25)
        binding.pry
        dime_amount += 1
        change -= 10
        if dime_amount > 1
        output = output + dime_amount.to_s + " " + @coins.fetch(10) + "s"
        else
        output = output + dime_amount.to_s + " " + @coins.fetch(10)
        end
      elsif (change >= 5) & (change < 10)
        binding.pry
        nickel_amount += 1
        change -= 5
        if nickel_amount > 1
        output = output + nickel_amount.to_s + " " + @coins.fetch(5) + "s"
        else
        output = output + nickel_amount.to_s + " " + @coins.fetch(5)
        end
      elsif (change >= 1) & (change < 5)
        penny_amount += 1
        change -= 1
        if penny_amount > 1
        output = output + penny_amount.to_s + " " + @coins.fetch(2)
        else
        output = output + penny_amount.to_s + " " + @coins.fetch(1)
        end
      end
    end
    return output
  end
end
