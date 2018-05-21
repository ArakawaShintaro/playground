require 'pry'

class Ticket
  attr_reader :fare, :stamped_at

  def initialize(fare)
    @fare = fare
  end

  def stamp(name)
    # 乗車駅
    @stamped_at = name
  end
end
