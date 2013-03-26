class User < ActiveRecord::Base
  
  
  %w[provider provider_uid provider_secret].each do |key|
    attr_accessible key
    scope "has_#{key}", lambda { |value| where("metadata @> (? => ?)", key, value) }
    
    define_method(key) do
      metadata && metadata[key]
    end
  
    define_method("#{key}=") do |value|
      self.metadata = (metadata || {}).merge(key => value)
    end
  end  

end
