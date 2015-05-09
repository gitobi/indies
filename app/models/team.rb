class Team < BaseModel

  has_many :relation_team_users
  has_many :relation_project_teams
  has_many :relation_room_teams

  has_many :users,    :through => :relation_team_users
  has_many :projects, :through => :relation_project_teams
  has_many :roomes,   :through => :relation_room_teams


  # def users
  #   parent_members.select { |item| item.child.type == "User" }.map { |item| item.child }
  # end

  # def projects
  #   child_members.select { |item| item.parent.type == "Project" }.map { |item| item.parent }
  # end


end
