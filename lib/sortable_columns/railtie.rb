module SortabeColumns
  class Railtie < ::Rails::Railtie
    require 'sortable_columns/config'
    require 'sortable_columns/configuration_methods'

    ActiveSupport.on_load(:active_record) do
      require 'sortable_columns/active_record_extension'
      include SortableColumns::ActiveRecordExtension
    end

    ActiveSupport.on_load(:action_view) do
      require 'sortable_columns/helpers/action_view_extension'
      include SortableColumns::ActionViewExtension
    end
    
  end
end
