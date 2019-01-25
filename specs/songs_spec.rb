require("minitest/autorun")
require('minitest/rg')
require_relative("../songs")

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Send me an Angel", 01)
  end

  def test_song_has_name
    assert_equal("Send me an Angel", @song.name())
  end

  def test_soundtrack
    assert_equal(01, @song.soundtrack())
  end

end
