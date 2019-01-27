require("minitest/autorun")
require('minitest/rg')
require_relative("../rooms")
require_relative("../songs")
require_relative("../guests")

class RoomTest < MiniTest::Test

  def setup()
    @customer_1 = Guest.new("Paco", 01, 25)
    @customer_2 = Guest.new("Paquito", 02, 50)
    @customer_3 = Guest.new("Pachote", 03, 25)

    @song_1 = Song.new("Send me an Angel", 01)
    @song_2 = Song.new("Like a hurricane", 02)

    @room = Room.new(01)
  end

  def test_room_has_guest?()
    @room.check_in(@customer_1)
    @room.check_in(@customer_2)
    assert_equal(2, @room.room_count())
  end

  def test_room_has_songs?
    @room.add_songs_to_room(@song_1)
    @room.add_songs_to_room(@song_2)
    assert_equal(2 , @room.room_song_count())
  end

  def test_room_is_clear?
    @room.check_in(@customer_1)
    @room.check_in(@customer_2)
    @room.check_out()
    assert_equal(0, @room.room_count())
    assert_equal(0, @room.room_song_count())
  end

  def test_enough_space__ok
    @room.check_in(@customer_1)
    @room.check_in(@customer_2)
    @room.check_in(@customer_3)
    @room.checkspace
    assert_equal("Room is not big enough!", @room.checkspace)
  end

  def test_entry_fee
    @room.entry_fee(@customer_1)
    assert_equal("You cannot pay the fee, sorry", @room.entry_fee(@customer_1))
    @room.entry_fee(@customer_2)
    assert_equal("Please, go in", @room.entry_fee(@customer_2))
  end

end
