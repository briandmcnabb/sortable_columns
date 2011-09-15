module SortableColumns
  module ConfigurationMethods
    extend ActiveSupport::Concern
    module ClassMethods

      def sort_column(column)
        return SortableColumns.config.default_sort_column if column.nil?
        sanitize_column(column) || SortableColumns.config.default_sort_column
      end
      
      def sort_direction(direction)
        return SortableColumns.config.default_sort_direction if direction.nil?
        sanitize_direction(direction) || SortableColumns.config.default_sort_direction
      end
      
      private
      def sanitize_column(column)
        return column if self.attribute_names.include?(column)
      end

      def sanitize_direction(direction)
        return direction if %w[asc desc].include?(direction)
      end
    end
  end
end