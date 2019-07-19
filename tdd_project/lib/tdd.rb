def my_uniq(array)
  uniques = []
  array.each do |ele|
    if !uniques.include?(ele)
      uniques << ele
    end
  end
  uniques
end

class Array
  def two_sum
    pairs = []

    (0...self.length).each do |start_idx|
      (start_idx...self.length).each do |end_idx|
        nums = [self[start_idx], self[end_idx]]
        indices = [start_idx, end_idx]
        pairs << indices if nums.sum == 0 && start_idx < end_idx
      end
    end

    pairs
  end
end

def my_transpose(array)
  transposed = []

  (0...array.length).each do |row_idx|
    new_row = []
    (0...array.length).each do |col_idx|
      new_row << array[col_idx][row_idx]
    end
    transposed << new_row
  end
  transposed
end