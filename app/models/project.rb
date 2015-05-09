class Project < BaseModel
  has_many :relation_project_users
  has_many :relation_project_teams
  has_many :relation_room_project

  has_many :users,  :through => :relation_project_users
  has_many :teams,  :through => :relation_project_teams
  has_many :roomes, :through => :relation_room_users

  # def users
  #   parent_members.select { |item| item.child.type == "User" }.map { |item| item.child }
  # end

  # def teams
  #   parent_members.select { |item| item.child.type == "Team" }.map { |item| item.child }
  # end

  def team_users
    hash = Hash.new

    users = self.users
    if users.present?
      hash[nil] = users
    end

    self.teams.each { |team|
      hash[team] = team.users
    }

    hash
  end

end
