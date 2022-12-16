module RadgridBuilding
  attr_accessor  :dim_x,:dim_y,:dim_t,:group,:info,:construction,:image,:offset_x,:offset_y,:snow

  def initialize
    @info = 0
    @construction = 0
    @needs_ground = 0
    @snow = 0 
  end
  
  def group(value)
    @group = value
    puts value
  end

  def type(type)
    puts "type=#{type}"
  end

  def waytype(type)
    puts "type=#{type}"
  end
  
  def dims(x,y,target)
    
    puts "dims=#{x},#{y},#{target}"
    #puts "x:#{x},y:#{y},target:#{target}"
    @dim_x = x.to_i
    @dim_y = y.to_i
    @dim_t = target.to_i
  end
  
  def enables(*flags) # station enable flags
    flags.each do |flag|
      puts "enables_#{flag}=1"
    end
    #p flags
  end

  def frontImage(&block) # export front image
    block.call
  end

  def backImage(&block) # export front image
    block.call
  end

  def infos(*flags)
    #puts flags
    if flags.grep(/info/)
      puts "NoInfo=1"
    else
      puts "NoInfo=#{@info}"
    end

    if flags.grep(/construction/)
      puts "NoConstruction=1"
    else
      puts "NoConstruction=#{@construction}"
    end

    if flags.grep(/ground/)
      puts "Needs_ground=1"
    else
      puts "Needs_ground=#{@needs_ground}"
    end
    
  end
  
  #module_function :group,:enables

  #private :group,:enables
end
