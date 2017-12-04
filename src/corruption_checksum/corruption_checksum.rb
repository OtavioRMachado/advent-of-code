class CorruptionChecksum
  def initialize(matrix)
    @matrix = matrix
  end

  def calculate_checksum
    @matrix.reduce(0) do |sum, row|
      sum += (row.max - row.min)
      sum
    end
  end
end
