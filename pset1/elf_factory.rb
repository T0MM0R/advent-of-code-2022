require('./elf.rb')

class ElfFactory
  attr_accessor :input
  attr_accessor :elves

  def input_array(input)
    input.split("\n\n")
  end

  def elf_factory
    elves = []
    input_array(@input).each do |array|
      elves.append(Elf.new(array))
    end
    elves
  end

  def fattest
    @elves.max_by(&:calories)
  end

  def fattest_group(count)
    @elves.sort_by(&:calories).reverse.take(count).sum(&:calories)
  end

  def initialize(input)
    @input = input
    @elves = elf_factory
  end
end
