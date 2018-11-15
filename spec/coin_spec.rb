require ('rspec')
require ('coin')
require ('pry')


describe("#count_change") do
  # it("Take 25 and give '1 quarter'") do
  #   user_coins = Coins.new()
  #   expect(user_coins.count_change(25)).to(eq("1 quarter"))
  # end
  #
  # it("Take 50 and give '2 quarters'") do
  #   user_coins = Coins.new()
  #   expect(user_coins.count_change(50)).to(eq("2 quarters"))
  # end
  #
  # it("Take 10 and give '1 dime'") do
  #   user_coins = Coins.new()
  #   expect(user_coins.count_change(10)).to(eq("1 dime"))
  # end
  #
  # it("Take 5 and give '1 nickel'") do
  #   user_coins = Coins.new()
  #   expect(user_coins.count_change(5)).to(eq("1 nickel"))
  # end
  #
  # it("Take 1 and give '1 penny'") do
  #   user_coins = Coins.new()
  #   expect(user_coins.count_change(3)).to(eq("3 pennies"))
  # end

  it("Take 65 and give '2 quarters, 1 dime'") do
    user_coins = Coins.new()
    expect(user_coins.count_change(65)).to(eq("2 quarters1 dime1 nickel"))
  end

end
