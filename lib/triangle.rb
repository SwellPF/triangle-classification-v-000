require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3, :kind
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
  sides.sort = [side1, side2, side3]
   binding.pry
    if side1 <= 0 || side2 <= 0 || side3 <= 0
          raise TriangleError
    elsif side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      :isosceles
    elsif (side1+side2) > side3 || (side1+side3) > side2 || (side2+side3) > side1
      :scalene
    
    end
  end
class TriangleError < StandardError
    def message 
      puts "Your triangle is invalid."
     end
end

end 
