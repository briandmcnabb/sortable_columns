class ParamSanitizer
  attr_reader :class, :param
  
  def initialize(opts)
    @class = opts[:class]
    @param = opts[:param]
  end 
  
  def sanitize
    @class._whitelisted_params.include?(@param)
    # or
    @class.attribute_names.include?(@param)
    # or
    ParamSanitizer.config.global_whitelist.include?(@param)
  end
  
end

#module ActiveRecordModleExtension
#  extend ActiveSupport::Concern 
#  included do
#    class_attribute :_blacklisted_params, :_whitelisted_params
#  
#    self._blacklisted_params =
#    self._whitelisted_params =
#  end
#  
#  
#  def blacklisted_params(*args)
#    if table_exists?
#      opts = args.extract_options!
#      args.flatten.each do |attr|
#        attr = attr.to_s
#        raise(ArgumentError, "No persisted attribute (column) named #{attr} in #{self}") unless self.columns_hash.has_key?(attr)
#        self._blacklisted_params = self._blacklisted_params.merge(attr => { :if => opts[:if] })
#      end
#    end
#  end
#  
#  def whitelisted_params(*args)
#    if table_exists?
#      opts = args.extract_options!
#      args.flatten.each do |attr|
#        attr = attr.to_s
#        raise(ArgumentError, "No persisted attribute (column) named #{attr} in #{self}") unless self.columns_hash.has_key?(attr)
#        self._whitelisted_params = self._whitelisted_params.merge(attr => { :if => opts[:if] })
#      end
#    end
#  end
#end