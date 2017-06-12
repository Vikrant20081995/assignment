class List

  def self.is_integer?(number)
    number == number.to_i.to_s
  end

  def self.iterate(first_number, last_number)
    return puts "enter valid range" unless is_integer?(first_number) && is_integer?(last_number)
    if first_number < last_number
      (first_number..last_number).each do |i|
        puts "#{i}"
      end
    else
      (first_number).downto(last_number) do |i|
        puts"#{i}"
      end
    end
  end

end

puts "Enter first number and last number of list"
first_number = gets.chomp
last_number = gets.chomp
List.iterate(first_number, last_number)