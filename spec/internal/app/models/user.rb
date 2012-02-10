class User < ActiveRecord::Base
  scope :sort, Proc.new { |column,direction| order("#{sort_column(column)} #{sort_direction(direction)}") }
end