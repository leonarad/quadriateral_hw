class Quadrilateral
  attr_reader :side_length, :side_width, :side1, :side2, :side3, :side4
end

class Rectangle < Quadrilateral
  
  def initialize (side_length, side_width)
    @side_length = side_length
    @side_width = side_width
  end

  def perimeter
    rec_perimeter = (2 * @side_length) + (2 * @side_width)
    rec_perimeter
  end

  def area
    rec_area = @side_length * @side_width
  end
end

class Square < Rectangle

  def initialize(side_length)
    @side_length = side_length
  end

  def perimeter
    squ_perimeter = 4 * @side_length
    squ_perimeter
  end

  def area
    squ_area = @side_length * @side_length
    squ_area
  end
end

class Trapezoid < Quadrilateral
  def initialize (side1, side2, side3, side4)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @side4 = side4
  end

  def perimeter
    trap_perimeter = @side1 + @side2 + @side3 + @side4
    trap_perimeter
  end
end

class Rhombus < Trapezoid
  def initialize (side_length)
    @side_length = side_length
  end

  def perimeter
    rho_perimeter = @side_length * 4
    rho_perimeter
  end

end

def test
  puts "Square test"
  squa = Square.new(1)
  puts squa.perimeter == 4
  puts squa.area == 1
  puts squa.side_length == 1

  puts "Rectangle test"
  rect = Rectangle.new(1, 2)
  puts rect.perimeter == 6
  puts rect.area == 2

  puts "Rhombus test"
  rhom = Rhombus.new (5)
  puts rhom.perimeter == 20
  puts rhom.side_length == 5

  puts "Trapezoid test"
  trap = Trapezoid.new(1,2,3,4)
  puts trap.perimeter == 10
end

test