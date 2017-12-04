require_relative '../corruption_checksum'

describe 'Corruption Checksum', type: :helper do
  it 'Returns 0 when the matrix is empty' do
    matrix = []
    result = CorruptionChecksum.new(matrix).calculate_checksum
    expect(result).to eq(0)
  end

  it 'returns the difference between the two numbers' do
    matrix = [[9, 1]]
    result = CorruptionChecksum.new(matrix).calculate_checksum
    expect(result).to eq(8)
  end

  it 'returns the difference between the two numbers' do
    matrix = [[9, 1]]
    result = CorruptionChecksum.new(matrix).calculate_checksum
    expect(result).to eq(8)
  end

  it 'verifies given example' do
    matrix = [[5, 1, 9, 5], [7, 5, 3], [2, 4, 6, 8]]
    result = CorruptionChecksum.new(matrix).calculate_checksum
    expect(result).to eq(18)
  end
end
