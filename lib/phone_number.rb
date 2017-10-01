class PhoneNumber
  def initialize(phone_number)
    if phone_number.match?(/[a-z]/)
    @number = '0000000000'
    else
    @number = phone_number.delete '^0-9'
  end
  end

  def number
    return '0000000000' unless valid_number?
    if length_eleven_start_with_1?
      @number = @number[1..-1]
    else
      @number
    end
  end

  def valid_number?
    valid_range? || length_eleven_start_with_1?
  end

  def valid_range?
    @number.length >= 10 && @number.length < 11
  end

  def length_eleven_start_with_1?
    @number.length == 11 && @number[0] == '1'
  end


  def area_code
    @number[0..2]
  end



  def to_s
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..-1]}"
  end



end


p PhoneNumber.new('1a2a3a4a5a6a7a8a9a0a')
