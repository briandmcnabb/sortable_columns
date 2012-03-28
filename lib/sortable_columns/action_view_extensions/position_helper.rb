module SortableColumns
  module ActionViewExtensions
    module PositionHelper
      
      def position_url
        url_for(action: 'position', controller: params[:controller], only_path: false)
      end

      def positioning_handle
        content_tag(:span, "[drag]", class: 'ir')
      end
    end
  end
end