require("minitest/autorun")
require('minitest/rg')
require_relative("../guests")

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Paco", 01)
  end

  def test_guest_has_name
    assert_equal("Paco", @guest.name())
  end

  def test_guest_number
    assert_equal(01, @guest.number())
  end

end
