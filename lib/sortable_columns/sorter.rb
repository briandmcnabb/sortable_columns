module SortableColumns
  module Sorter
    def sort_column(column)
      self.class.attribute_names.include?(column) ? column : "created_at"
    end

    def sort_direction(direction)
      %w[asc dsc].include?(direction) ? direction : "asc"
    end
  end
end