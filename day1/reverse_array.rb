class Array

  def get_reverse
    output_array = []
    i = -1
    self.length.times do
      output_array << self[i]
      i = i-1
    end
    puts "#{output_array}"
  end

end

[1,2,3,4].get_reverse