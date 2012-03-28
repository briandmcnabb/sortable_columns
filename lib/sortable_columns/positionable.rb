module SortableColumns
  module Positionable
    
    def position
      params[resource_class.name.downcase.to_sym].each_with_index do |id, index|
        resource_class.update_all({position: index+1}, {id: id})
      end
      render nothing: true
    end
  end
end