require ('rspec')
require ('coin')
require ('pry')


describe("#count_change") do

  it("Take 50 and give '2 quarters'") do
    user_coins = Coins.new()
    expect(user_coins.count_change(0.50)).to(eq("2 quarters"))
  end

  it("Take 60 and give '2 quarters, 1 dime'") do
    user_coins = Coins.new()
    expect(user_coins.count_change(0.60)).to(eq("2 quarters, 1 dime"))
  end

  it("Take 3 and give '3 pennies'") do
    user_coins = Coins.new()
    expect(user_coins.count_change(0.03)).to(eq("3 pennies"))
  end

  it("Take 68 and give '2 quarters, 1 dime, 1 nickel, 3 pennies'") do
    user_coins = Coins.new()
    expect(user_coins.count_change(0.68)).to(eq("2 quarters, 1 dime, 1 nickel, 3 pennies"))
  end

end
