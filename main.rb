require_relative 'inverse_captcha_2'

input = File.read('inverse_captcha_2_input')
puts input
puts InverseCaptcha2.new(input).solve_captcha
