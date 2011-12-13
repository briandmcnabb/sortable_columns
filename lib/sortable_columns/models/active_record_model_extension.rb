module SortableColumns
  module ActiveRecordModelExtension
    extend ActiveSupport::Concern
    
    included do      
      include SortableColumns::ConfigurationMethods
      scope :sort, Proc.new { |column,direction| order("#{sort_column(column)} #{sort_direction(direction)}") }
    end
  end
end