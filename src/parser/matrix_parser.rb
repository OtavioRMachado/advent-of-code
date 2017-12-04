class MatrixParser
  NEW_LINE = "\n"
  SEPARATOR = ' '
  def initialize(input)
    @input = input
  end

  def parse_matrix
    return [] if @input == ''
    @input.split(NEW_LINE).map { |row| parse row }
  end

  def parse(row)
    row.split(SEPARATOR).map { |value| value.to_i }
  end
end
