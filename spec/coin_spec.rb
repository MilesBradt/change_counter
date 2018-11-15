require ('rspec')
require ('coin')
require ('pry')


describe("#count_change") do
  it("Take 50 and give 25 + 25") do
    user_coins = Coins.new()
    expect(user_coins.count_change(25)).to(eq("1 quarter"))
  end

end
