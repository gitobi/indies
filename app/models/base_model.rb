class BaseModel < ActiveRecord::Base
  self.abstract_class = true
  include Crudable
  include RequestVariable

end
