require 'pry'

class Triangle

attr_accessor :equilateral, :isosceles, :scalene


def initialize(x, y, z)
  @x = x
  @y = y
  @z = z
end

@@all = [:equilateral, :isosceles, :scalene]

def self.all
  @@all
end
binding.pry

def kind

  if @x == @y  && @x == @z
    return  :equilateral

  elsif @x == @y || @y == @z || @x == @z
    return :isosceles

  # elsif @x != @y || @y != @z || @x != @z
  #   return :scalene
else
  return :scalene
    end
end

  def valid_triangle(triangle)
    triangle = @@all
    triangle.each do |side|
      triangle << false if side <= 0
    end
    raise TriangleError if real_triangle.include?(false)
  end

class TriangleError < StandardError

end #triangle end








end #class end
