require_relative 'inverse_captcha'

input = File.read('inverse_captcha_input')
puts input
puts InverseCaptcha.new(input).solve_captcha
