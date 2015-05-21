class Project < BaseModel

  has_many :project_users
  has_many :project_messages, -> { preload [:user] }

  has_many :messages, class_name: 'ProjectMessage'
  has_many :users,    :through => :project_users

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
