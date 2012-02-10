module SortableColumns
  class ColumnSorter
    attr_reader :resource
    
    def initialize(resource)
      @resource = resource
    end
    
    def column(column=nil)
      return SortableColumns.config.default_sort_column if column.nil?
      sanitize_column(column) || SortableColumns.config.default_sort_column
    end
    
    def direction(direction=nil)
      return SortableColumns.config.default_sort_direction if direction.nil?
      sanitize_direction(direction) || SortableColumns.config.default_sort_direction
    end
    
    
    private
    
    def sanitize_column(column)
      return column if @resource.attribute_names.include?(column)
    end
    
    def sanitize_direction(direction)
      return direction if %w[asc desc].include?(direction)
    end
  end
end