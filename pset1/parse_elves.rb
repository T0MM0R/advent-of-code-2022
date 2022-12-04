require('./elf_factory.rb')

input = File.open('input.txt').read

elves = ElfFactory.new(input)

p "fattest"
p elves.fattest.calories

p "fattest 3"
p elves.fattest_group(3)

