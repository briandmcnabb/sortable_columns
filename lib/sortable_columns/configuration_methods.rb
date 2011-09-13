module SortableColumns
  module ConfigurationMethods
    extend ActiveSupport::Concern
    module ClassMethods
      def sort_column(column)
        self.attribute_names.include?(column) ? column : "created_at"
      end

      def sort_direction(direction)
        %w[asc desc].include?(direction) ? direction : "asc"
      end
    end
  end
end