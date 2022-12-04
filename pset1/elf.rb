class Elf
  attr_accessor :calories
  attr_accessor :data

  def calories
    @data.split("\n").collect {|a| a.to_i}.sum
  end

  def initialize(data)
    @data = data
    @calories = calories
  end
end
