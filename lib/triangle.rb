require 'pry'

class Triangle

attr_accessor :x, :y, :z


def initialize(x, y, z)
  @x = x
  @y = y
  @z = z
end


def kind
  if valid_triangle
    if @x == @y  && @x == @z
      return  :equilateral

    elsif @x == @y || @y == @z || @x == @z
      return :isosceles

    else

    return :scalene   # elsif @x != @y || @y != @z || @x != @z
                      #   return :scalene

      end
    else
      raise TriangleError
    end
  end


def valid_triangle
  triangle = (x + y > z ) && (x + z > y) && (y + z > x) && (x > 0) && (y > 0) && (z > 0)
end


# The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality.
#
# Further, each side must be larger than 0.


class TriangleError < StandardError

end #triangle end







end #class end
