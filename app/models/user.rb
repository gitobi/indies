class User < BaseModel

  belongs_to :account

  has_many :team_messages, -> { includes [:team] }
  has_many :project_messages, -> { includes [:project] }

  has_many :relation_team_users
  has_many :relation_project_users

  has_many :teams,    :through => :relation_team_users
  has_many :projects, :through => :relation_project_users


  # def teams
  #   child_members.select { |item| item.parent.type == "Team" }.map { |item| item.parent }
  # end

  # def projects
  #   child_members.select { |item| item.parent.type == "Project" }.map { |item| item.parent }
  # end


  def team_projects
    hash = Hash.new

    projects = self.projects
    if projects.present?
      hash[nil] = projects
    end

    self.teams.each { |team|
      hash[team] = team.projects
    }

    hash
  end

  # def members
  #    parent_members + child_members
  # end

  # def users
  #   child_members.select { |item| item.child.type == "User" }.map { |item| item.child }
  # end


  # def follows
  #   parent_members.select { |item| item.parent.type == "User" }.map { |item| item.parent }
  # end

  # def followeres
  #   child_members.select { |item| item.parent.type == "User" }.map { |item| item.parent }
  # end

end
