class Cells
  def initialize
    @cells = {}
  end

  def [](row_index, col_index)
    @cells[[row_index, col_index]]
  end

  def []=(row_index, col_index, value)
    @cells[[row_index, col_index]] = value
  end
end