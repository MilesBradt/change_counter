class Coins
  def initialize()
    @coins = {
      1 => "penn",
      5 => "nickel",
      10 => "dime",
      25 => "quarter"
    }
  end

  def count_change(change)
    change = change * 100
    output = ""
    quarter_amount = 0
    dime_amount = 0
    nickel_amount = 0
    penny_amount = 0
    until change == 0 do
      if change >= 25
        quarter_amount += 1
        change -= 25
        if (quarter_amount > 1) & (change != 0)
        output = quarter_amount.to_s + " " + @coins.fetch(25) + "s, "
        elsif change != 0
        output = quarter_amount.to_s + " " + @coins.fetch(25) + ", "
        elsif (quarter_amount > 1) & (change == 0)
        output = quarter_amount.to_s + " " + @coins.fetch(25) + "s"
        elsif change == 0
        output = quarter_amount.to_s + " " + @coins.fetch(25)
        end
      elsif (change >= 10) & (change < 25)
        dime_amount += 1
        change -= 10
        if (dime_amount > 1) & (change != 0)
        output = output + dime_amount.to_s + " " + @coins.fetch(10) + "s, "
        elsif change != 0
        output = output + dime_amount.to_s + " " + @coins.fetch(10) + ", "
        elsif (dime_amount > 1) & (change == 0)
        output = output + dime_amount.to_s + " " + @coins.fetch(10) + "s"
        elsif (change == 0)
        output = output + dime_amount.to_s + " " + @coins.fetch(10)
        end
      elsif (change >= 5) & (change < 10)
        nickel_amount += 1
        change -= 5
        if (nickel_amount > 1) & (change != 0)
        output = output + nickel_amount.to_s + " " + @coins.fetch(5) + "s, "
        elsif change != 0
        output = output + nickel_amount.to_s + " " + @coins.fetch(5) + ", "
      elsif (nickel_amount > 1) & (change == 0)
        output = output + nickel_amount.to_s + " " + @coins.fetch(5) + "s"
        elsif (change == 0)
        output = output + nickel_amount.to_s + " " + @coins.fetch(5)
        end
      elsif (change >= 1) & (change < 5)
        penny_amount += 1
        change -= 1
        if (penny_amount > 1) & (change == 0)
        output = output + penny_amount.to_s + " " + @coins.fetch(1) + "ies"
        elsif (change == 0)
        output = output + penny_amount.to_s + " " + @coins.fetch(1) + "y"
        end
      end
    end
    p output
    return output
  end
end
