require File.join(File.dirname(__FILE__), 'active_record_model_extension')

module SortableColumns
  module ActiveRecordExtension
    extend ActiveSupport::Concern
    included do
      # Future subclasses will pick up the model extension
      class << self
        def inherited_with_sortable_columns(subclass) #:nodoc:
          inherited_without_sortable_columns subclass
          subclass.send(:include, SortableColumns::ActiveRecordModelExtension) if subclass.superclass == ActiveRecord::Base
        end
        alias_method_chain :inherited, :sortable_columns
      end      

      # Existing subclasses pick up the model extension as well
      self.descendants.each do |subclass|
        subclass.send(:include, SortableColumns::ActiveRecordModelExtension) if subclass.superclass == ActiveRecord::Base
      end
    end
  end
end