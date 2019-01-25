require("minitest/autorun")
require('minitest/rg')
require_relative("../rooms")

class RoomTest < MiniTest::Test

  def setup
    @customer_1 = Guest.new("Paco", 01)
    @customer_2 = Guest.new("Paquito", 02)
    @song_1 = Song.new("Send me an Angel", 01)
    @song_2 = Song.new("Like a hurricane", 02)

    @guest_list = [@customer_1, @customer_2]
    @songlist = [@song_1, @song_2]

    @room = Room.new(01, @guest_list, @song_list)
  end

  def test_room_has_guest?
    assert_equal([["Paco", 01],["Paquito", 02]] , @room.guest_list())
  end

  def test_room_has_songs?
    assert_equal([["Send me an Angel", 01], ["Like a hurricane", 02]] , @room.song_list)
  end

end
