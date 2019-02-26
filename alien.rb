require_relative 'missile'
require_relative 'can_shoot'

class Alien < CanShoot

  WIDTH = 50
  HEIGHT = 50

  attr_accessor :location, :firing_point

  def initialize
    @location = Vector.new(200, 200)
    @firing_point = bottom_edge
  end

  def move
  end

  def draw
    puts self
  end

  def to_s
    "👾 (#{location})"
  end

  def bottom_edge
    location.y + half_height
  end

  private

  def half_height
    HEIGHT / 2
  end

end
