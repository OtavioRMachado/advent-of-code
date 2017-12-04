require_relative '../../src/parser/matrix_parser'
describe 'Matrix Parser', type: :helper do
  it 'parses empty file into an empty list' do
    input = ''
    result = MatrixParser.new(input).parse_matrix
    expect(result).to eq([])
  end

  it 'parses one row with one element' do
    input = '1'
    result = MatrixParser.new(input).parse_matrix
    expect(result).to eq([[1]])
  end

  it 'parses a row with more than one element' do
    input = '1 2'
    result = MatrixParser.new(input).parse_matrix
    expect(result).to eq([[1, 2]])
  end

  it 'parses two rows with one element each' do
    input = "1\n2"
    result = MatrixParser.new(input).parse_matrix
    expect(result).to eq([[1], [2]])
  end

  it 'parses two rows with more than one element' do
    input = "1 2\n3"
    result = MatrixParser.new(input).parse_matrix
    expect(result).to eq([[1,2], [3]])
  end
end
