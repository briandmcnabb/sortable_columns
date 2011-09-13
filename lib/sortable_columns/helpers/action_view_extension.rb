require File.join(File.dirname(__FILE__), '..', 'configuration_methods')

module SortableColumns
  module ActionViewExtension
    extend ::ActiveSupport::Concern
    module InstanceMethods
      self.send(:include, SortableColumns::ConfigurationMethods)
      
      def sortable(column, title = nil)
        title ||= column.titleize
        css_class = column == sort_column ? "current #{sort_direction}" : nil
        direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
        link_to title, params.merge(:sort => column, :direction => direction), {:class => css_class}
      end
    end
  end
end
