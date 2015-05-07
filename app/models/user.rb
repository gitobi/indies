class User < Person

  def teams
    child_members.select { |item| item.parent.type == "Team" }.map { |item| item.parent }
  end

  def projects
    child_members.select { |item| item.parent.type == "Project" }.map { |item| item.parent }
  end

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

end
