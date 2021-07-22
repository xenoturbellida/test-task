class Sequence
  attr_accessor :init_number

  def initialize
    @init_number = "1"
  end

  def next_number(current_num)
    result = ""
    ind = 0

    while ind < current_num.length()
      count = 1
      while ind + 1 < current_num.length() and current_num[ind] == current_num[ind + 1]
        ind += 1
        count += 1
      end
      result += count.to_s + current_num[ind]
      ind += 1
    end
    return result
  end

  def print_sequence(up_to)
    current = @init_number
    up_to.times do |serial_number|
      puts current
      current = next_number(current)
    end
  end
end


seq = Sequence.new

seq.print_sequence(8)
