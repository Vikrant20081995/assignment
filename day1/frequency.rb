class Frequency
  
  def self.user_input(size)
    input_array = Array.new(size)
    size.times do |i|
      input_array[i] = gets.chomp.to_i
    end
    input_array
  end

  def self.count(size)
    input_array = user_input(size)
    frequency_count = {}
    frequency_count.default = 0
    input_array.each{|key| frequency_count[key] += 1}
    output(frequency_count)
  end

  def self.output(input_hash)
    input_hash.each do |key, value|
      puts "#{key} => #{value}"
    end
  end

end

puts "Enter size of array"
size = gets.to_i
Frequency.count(size)