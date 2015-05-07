class Team < Person

  def users
    parent_members.select { |item| item.child.type == "User" }.map { |item| item.child }
  end

  def projects
    child_members.select { |item| item.parent.type == "Project" }.map { |item| item.parent }
  end


end
