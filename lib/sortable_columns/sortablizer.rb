module SortableColumns
  class Sortablizer
    attr_reader :resource
    
    def initialize(resource)
      @resource = resource
    end
    
    def column(column=nil, options={})
      if column.nil?
        options[:default] || 'created_at'
      else
        sanitize_column(column) || options[:default]
      end
    end
    
    def direction(direction=nil, options={})
      if direction.nil? 
        options[:default] || 'desc' 
      else
        sanitize_direction(direction) || options[:default]
      end
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