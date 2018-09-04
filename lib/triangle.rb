require 'pry'

class Triangle

attr_accessor :x, :y, :z


def initialize(x, y, z)
  @x = x
  @y = y
  @z = z
end


def kind
  valid_triangle
  if @x == @y  && @x == @z
    return  :equilateral

  elsif @x == @y || @y == @z || @x == @z
    return :isosceles

  elsif @x != @y || @y != @z || @x != @z
    return :scalene
else

    end
end

def valid_triangle
  triangle = [(x + y > z ), (x + z > y), (y + z > x)]
  sides = [x, y, z]
    sides.each do |side|
       if side < 0
         triangle = false
    end
    if triangle.include?(false)
      begin
        raise TriangleError
      end
    end
 end


# The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality.
#
# Further, each side must be larger than 0.


class TriangleError < StandardError

end #triangle end

# [@x, @y, @z]






end #class end
