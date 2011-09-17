module SortableColumns
  module ActionViewExtension
    extend ActiveSupport::Concern
    
    module InstanceMethods
      def sortable(column, title = nil)        
        title ||= column.titleize
        css_class = column == params[:sort][:column] ? "current #{ params[:sort][:direction] }" : nil
        direction = column == params[:sort][:column] && params[:sort][:direction] == "asc" ? "desc" : "asc"
        link_to title, params.merge(column: column, direction: direction), {:class => css_class}
      end
    end    
  end
end