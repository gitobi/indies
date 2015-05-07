class Person < BaseModel

  # attr_accessible parents, children

  has_many :parent_members, :foreign_key => "parent_id", :class_name => "Member"
  has_many :child_members,  :foreign_key => "child_id",  :class_name => "Member"

  has_many :parents,  :through => :parent_members, :source => :parent
  has_many :children, :through => :child_members,  :source => :child

  def members
     parent_members + child_members
  end

  def users
    child_members.select { |item| item.child.type == "User" }.map { |item| item.child }
  end


  def follows
    parent_members.select { |item| item.parent.type == "User" }.map { |item| item.parent }
  end

  def followeres
    child_members.select { |item| item.parent.type == "User" }.map { |item| item.parent }
  end


end
