class Sequence
  attr_accessor :init_number, :sequence, :last_number

  def initialize
    @init_number = "1"
    @sequence = Array.new
  end

  def next_number(current_num)
    result = ""
    i = 0

    while i < current_num.length
      count = 1

      while i + 1 < current_num.length and current_num[i] == current_num[i + 1]
        i += 1
        count += 1
      end

      result += count.to_s + current_num[i]
      i += 1
    end

    return result

  end

  def generate_sequence(up_to_num="6")

    current = @init_number
    @sequence << current

    up_to_num.times do |how_many_was_generated|
      current = next_number(current)
      @sequence << current
    end

    @last_number = current

  end

  def print_sequence(up_to_num="6")
    generate_sequence(up_to_num)
    for num in @sequence
      puts num
    end
  end

  def print_with_user_input
    pad = 14
    message = " Specify your serial number the sequence will be printed up to: "
    message = message.center(message.length + pad, "=")
    puts message

    up_to_num_ = gets.chomp.to_i

    seq_message =  " The sequence: "
    seq_message = seq_message.center(message.length, "*")
    puts seq_message

    print_sequence(up_to_num_)

    puts "*" * message.length
  end

end


seq = Sequence.new

seq.print_with_user_input
