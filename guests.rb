class Guest

  attr_reader :name, :number
  attr_accessor :wallet

  def initialize(name, number, wallet)
    @name = name
    @number = number
    @wallet = wallet
  end

end
