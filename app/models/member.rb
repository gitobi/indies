class Member < BaseModel
  # attr_accessible :parent, :child

  belongs_to :parent, :class_name => "Person"
  belongs_to :child,  :class_name => "Person"

end
