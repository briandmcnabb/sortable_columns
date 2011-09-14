module SortableColumns
  module ConfigurationMethods
    extend ActiveSupport::Concern
    module ClassMethods

      # This model's default +per_page+ value
      # returns +default_per_page+ value unless explicitly overridden via <tt>paginates_per</tt>
      def sort_column(column)
        # Need to add sanitation logic
        column || SortColumn.config.default_sort_column
      end
      
      def sort_direction(direction)
        # Need to add sanitation logic
        direction || SortColumn.config.default_sort_column
      end
    end
  end
end