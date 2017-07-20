class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand

    BRANDS << brand unless BRANDS.any? do
      # push into brands UNLESS current brand already == one that has been
      #paassed in
      |b| b == brand
    end

  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
