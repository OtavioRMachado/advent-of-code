require_relative 'inverse_captcha/inverse_captcha_2'
require_relative 'corruption_checksum/corruption_checksum'
require_relative 'parser/matrix_parser'
# input = File.read('inverse_captcha_2_input')
# puts input
# puts InverseCaptcha2.new(input).solve_captcha

input = File.read('resources/corruption_checksum_input')
matrix = MatrixParser.new(input).parse_matrix
# puts matrix
puts CorruptionChecksum.new(matrix).calculate_checksum
