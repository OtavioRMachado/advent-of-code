require_relative "../inverse_captcha"

describe 'Inverse Captcha', type: :helper do
  it 'returns zero when input length <= 1' do
    empty_input = ''
    input = '1'
    result = InverseCaptcha.new(empty_input).solve_captcha
    expect(result).to eq(0)
    result = InverseCaptcha.new(input).solve_captcha
    expect(result).to eq(0)
  end

  it 'considers 2 when input is 122' do
    input = '122'
    result = InverseCaptcha.new(input).solve_captcha
    expect(result).to eq(2)
  end

  it 'considers 2 twice when input is 1222' do
    input = '1222'
    result = InverseCaptcha.new(input).solve_captcha
    expect(result).to eq(4)
  end

  it 'considers 1 twice when input is 11' do
    input = '11'
    result = InverseCaptcha.new(input).solve_captcha
    expect(result).to eq(2)
  end

  it 'considers 2 when input is 212' do
    input = '2122'
    result = InverseCaptcha.new(input).solve_captcha
    expect(result).to eq(4)
  end

  it 'considers examples in page' do
    input = '1122'
    result = InverseCaptcha.new(input).solve_captcha
    expect(result).to eq(3)

    input = '1111'
    result = InverseCaptcha.new(input).solve_captcha
    expect(result).to eq(4)

    input = '1234'
    result = InverseCaptcha.new(input).solve_captcha
    expect(result).to eq(0)

    input = '91212129'
    result = InverseCaptcha.new(input).solve_captcha
    expect(result).to eq(9)

    input = '823175367468399787817925919558'
    result = InverseCaptcha.new(input).solve_captcha
    expect(result).to eq(22)
  end
end
