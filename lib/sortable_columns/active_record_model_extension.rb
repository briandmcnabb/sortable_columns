require File.join(File.dirname(__FILE__), 'configuration_methods')

module SortableColumns
  module ActiveRecordModelExtension
    extend ActiveSupport::Concern
    
    included do
      self.send(:include, SortableColumns::ConfigurationMethods)
      
      self.scope :sort, Proc.new { |column,direction| order("#{sort_column(column)} #{sort_direction(direction)}") }
    end
  end
end
