class DoubleElements

  def self.is_integer?(element)
    element == element.to_i.to_s
  end

  def self.is_float?(element)
    element == element.to_f.to_s
  end

  def self.is_type(element)
    return element.to_i if is_integer?(element)
    return element.to_f if is_float?(element)
    element
  end

  def self.input_array(size)
    input = Array.new(size) 
    size.times do |i|
      input_element = gets.chomp
      input[i] = is_type(input_element)
    end
    double_elements(input)
  end

  def self.double_elements(array_in)
    array_out = array_in.map { |e| (e.is_a? Float or e.is_a? Integer) ? e * 2 : e}
  end

end

puts "enter size of array"
size = gets.chomp.to_i
puts DoubleElements.input_array(size)