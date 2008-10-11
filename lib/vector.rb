module Geometry
  class Vector
    attr_reader :x
    attr_reader :y

    def initialize(x, y)
      @x = x
      @y = y
    end        
    
    def ==(vector)
      @x === vector.x && @y === vector.y
    end
    
    def collinear_with?(vector)
      @x.to_f / vector.x === @y.to_f / vector.y
    end
    
    # Modulus of vector. Also known as length, size or norm
    def modulus      
      Math.hypot(@x ,@y)
    end

    # z-coordinate of cross product (also known as vector product or outer product)
    # It is positive if other vector should be turned counter-clockwise in order to superpose them.
    # It is negetive if other vector should be turned clockwise in order to superpose them.
    # It is zero when vectors are collinear.
    # Remark: x- and y- coordinates of plane vectors cross product are zero
    def cross_product(vector)
      @x * vector.y - @y * vector.x
    end

    def scalar_product(vector)
      @x * vector.x + @y * vector.y
    end
  end
end