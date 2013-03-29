class User < ActiveRecord::Base
  attr_accessible :uid, :name, :password, :mail, :tagline, :last_update, :last_access, :status, :timezone, :metadata, :user_roles
  
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


      