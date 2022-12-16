class Radgrid
  require_relative 'radgrid_building'
  require_relative 'radgrid_vehicle'
  include RadgridBuilding
  include RadgridVehicle
  def initialize 
  end

#common method
  
  def obj(param) #object type check
    case param
    when /^Building$/i

      puts "obj=building"
    else
      puts "none type #{param}"
    end
  end

  def name(param) # name rule check
    if /[\/\s]/ === param
      puts "Error: name in \"/\" "
      puts "name=#{param}"
    else
      puts "name=#{param}"
    end
  end

  def copyright(author)
    puts "copyright=#{author}"
  end
                
  
  # def group(value)
  #    @group = value
  #  end



  
  def param(key,value)
    
  end
  
  def method_missing(name,value) # undefined method call 
    puts "Undefined: #{name} = #{value}"
    #puts "#{name}=#{value}"
  end



  
  
  def splits

  end
  
  # imager method
  def _image(name) # set image name
    @image = name
    #puts name
  end

  def _snow(flag)
    @snow = flag
  end
  
  def offset(x,y) # image region set
    @offset_x = x.to_i
    @offset_y = y.to_i
    #puts "X:#{x},Y:#{y}"
  end
  



end

