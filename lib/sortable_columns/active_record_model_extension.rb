module SortableColumns
  module ActiveRecordModelExtension
    extend ActiveSupport::Concern
    
    included do      
      self.scope :sort, Proc.new { |column,direction| order("created_at asc") }
    end
  end
end
# #{sort_column(column)} #{sort_direction(direction)}