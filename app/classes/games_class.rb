class Game
  attr_accessor :user
  @@all = []
  def initialize(name)
    @user = User.new(name)
    @@all << self
  end
  def self.all
    @@all
  end
end
