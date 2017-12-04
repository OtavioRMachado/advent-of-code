require_relative "../../src/inverse_captcha/inverse_captcha_2"

describe 'Inverse Captcha 2', type: :helper do
  it 'returns 0 if odd size or empty' do
    result = InverseCaptcha2.new('').solve_captcha
    expect(result).to eq(0)

    result = InverseCaptcha2.new('123').solve_captcha
    expect(result).to eq(0)
  end

  it 'returns 2 when 11' do
    result = InverseCaptcha2.new('11').solve_captcha
    expect(result).to eq(2)
  end

  it 'returns 6 when 1212' do
    result = InverseCaptcha2.new('1212').solve_captcha
    expect(result).to eq(6)
  end

  it 'solves given examples' do
    result = InverseCaptcha2.new('1221').solve_captcha
    expect(result).to eq(0)

    result = InverseCaptcha2.new('123425').solve_captcha
    expect(result).to eq(4)

    result = InverseCaptcha2.new('123123').solve_captcha
    expect(result).to eq(12)

    result = InverseCaptcha2.new('12131415').solve_captcha
    expect(result).to eq(4)
  end
end
