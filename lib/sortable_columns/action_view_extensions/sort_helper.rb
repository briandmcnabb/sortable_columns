module SortableColumns
  module ActionViewExtensions
    module SortHelper
      
      def sortable(column, title = nil)        
        title ||= column.titleize
        css_class = column == params[:column] ? "current #{ params[:direction] }" : nil
        direction = column == params[:column] && params[:direction] == "asc" ? "desc" : "asc"
        link_to title, params.merge(column: column, direction: direction), {:class => css_class}
      end
    end
  end
end