require 'active_support/configurable'

module SortableColumns
  # Configures global settings for SortableColumns
  #   SortableColumns.configure do |config|
  #     config.default_sort_column = 'created_at'
  #   end
  def self.configure(&block)
    yield @config ||= SortableColumns::Configuration.new
  end

  # Global settings for SortableColumns
  def self.config
    @config
  end

  class Configuration #:nodoc:
    include ActiveSupport::Configurable
    config_accessor :default_sort_column
    config_accessor :default_sort_direction

    def param_name
      config.param_name.respond_to?(:call) ? config.param_name.call() : config.param_name 
    end
  end

  configure do |config|
    config.default_sort_column = 'created_at'
    config.default_sort_column = 'dsc'
    config.param_name = :sort
  end
end
