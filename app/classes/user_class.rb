class User
  attr_accessor :name, :wins, :losses, :games

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
    @wins = 0
    @losses = 0
  end


  def self.all
    @@all
  end

end
