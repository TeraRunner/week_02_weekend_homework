class Room

  attr_reader :room_number, :song_list

  def initialize(room_number)
    @room_number = room_number
    @guest_list = []
    @song_list = []
  end

  def check_in(guests)
    return @guest_list.push(guests)
  end

  def room_count()
    return @guest_list.length()
  end

  def add_songs_to_room(songs)
    @song_list << songs
  end

  def check_out()
    @guest_list.clear()
    @song_list.clear()
  end

end
