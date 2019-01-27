require("minitest/autorun")
require('minitest/rg')
require_relative("../guests")

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Paco", 01, 50)
  end

  def test_guest_has_name
    assert_equal("Paco", @guest.name())
  end

  def test_guest_number
    assert_equal(01, @guest.number())
  end

  def test_money_to_spend?
    assert_equal(50, @guest.wallet)
  end

end
