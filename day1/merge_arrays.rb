class MergeArrays

  def initialize
    @output_array = []
  end

  def merge_input(array_input)
    @output_array = @output_array.concat(array_input)
  end

  def input_array(size)
    array_input = Array.new(size)
    size.times do |i|
      array_input[i] = gets.chomp
    end
    merge_input(array_input)
  end

  def output
    puts "resultant array is #{@output_array}"
  end
  
end

puts "enter size of first array"
size = gets.chomp.to_i
input = MergeArrays.new
input.input_array(size)
puts "Enter size of second arrray"
size = gets.chomp.to_i
input.input_array(size)
input.output