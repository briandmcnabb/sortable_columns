module SortableColumns
  ActiveSupport.on_load(:active_record) do
    require 'kaminari/models/active_record_extension'
    ::ActiveRecord::Base.send :include, SortableColumns::ActiveRecordExtension
  end
end