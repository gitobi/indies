require 'singleton_hash'
module RequestVariable
  extend ActiveSupport::Concern
  
  included do

    def self.set_application_id(application_id)
      SingletonHash.instance.hash[:application_id] = application_id
    end
    
    def self.get_application_id
      SingletonHash.instance.hash[:application_id]
    end

  end
end
