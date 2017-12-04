class InverseCaptcha
  def initialize(input)
    @values = input.split('')
  end

  def solve_captcha
    return 0 if @values.size < 2
    last_input = @values[-1]
    puts last_input
    @values.reduce(0) do |sum, input|
      sum += input.to_i if input == last_input
      last_input = input
      sum
    end.to_i
  end
end
