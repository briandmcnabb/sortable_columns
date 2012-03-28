require 'action_view'

module SortableColumns
  autoload :Sortablizer,  'sortable_columns/sortablizer'
  autoload :Positionable, 'sortable_columns/positionable'

  
  ActiveSupport.on_load(:action_view) do
    require 'sortable_columns/action_view_extensions/sort_helper'
    require 'sortable_columns/action_view_extensions/position_helper'    
    include SortableColumns::ActionViewExtensions::SortHelper
    include SortableColumns::ActionViewExtensions::PositionHelper
  end
end