require 'action_view'
require 'sortable_columns/config'
require 'sortable_columns/column_sorter'

module SortableColumns
  ActiveSupport.on_load(:action_view) do
    require 'sortable_columns/action_view_extensions/sort_helper'
    include SortableColumns::ActionViewExtensions::SortHelper
  end
end