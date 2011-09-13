module SortableColumns
  ActiveSupport.on_load(:active_record) do
    require 'sortable_columns/active_record_extension'
    ::ActiveRecord::Base.send :include, SortableColumns::ActiveRecordExtension
  end
  
  ActiveSupport.on_load(:action_view) do
    require 'sortable_columns/helpers/action_view_extension'
    ::ActionView::Base.send :include, SortableColumns::ActionViewExtension
  end
end