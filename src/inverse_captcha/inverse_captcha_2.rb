class InverseCaptcha2
  def initialize(input)
    @values = input.split('')
  end

  def solve_captcha
    return 0 if @values.size % 2 == 1
    half = @values.size / 2
    result = (0..half).reduce(0) do |sum, index|
      sum += @values[index].to_i * 2 if @values[index + half] == @values[index]
      sum
    end
  end
end
