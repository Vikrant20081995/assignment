class MergeArraysWithoutFunction

  def initialize
    @output_array = []
  end

  def merge_input(input)
    input.each do |element|
      @output_array << element
    end
    @output_array
  end

  def input_array(size)
    enter_array = Array.new(size)
    size.times do |i|
      enter_array[i] = gets.chomp
    end
    enter_array
  end

  def out_array
    puts"merged array is #{@output_array}"
  end

end

merge_array = MergeArraysWithoutFunction.new
puts "Enter size of first array"
length = gets.chomp.to_i
array_input = merge_array.input_array(length)
merge_array.merge_input(array_input)
puts "Enter size of second array"
length = gets.chomp.to_i
array_input = merge_array.input_array(length)
merge_array.merge_input(array_input)
merge_array.out_array