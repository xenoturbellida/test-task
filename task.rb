class Sequence
  attr_accessor :init_number, :sequence

  def initialize
    @init_number = "1"
    @sequence = Array.new
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

  def generate_sequence(up_to_num)
    current = @init_number
    @sequence << current
    # generated_seq = current
    up_to_num.times do |how_many_was_generated|
      # puts current
      current = next_number(current)
      @sequence << current
      # generated_seq = generated_seq + "\n" + current
    end
  end

  def print_sequence(up_to_num)
    # puts generate_sequence(up_to_num)
    generate_sequence(up_to_num)
    for num in @sequence
      puts num
    end
  end
end


# seq = Sequence.new
#
# seq.print_sequence(3)
