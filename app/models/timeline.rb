class Timeline

  def initialize
    @team_messages = []
    @project_messages = []
    @messages = []
    @sorted = false
  end

  def add_user(user)
    user.teams.each do |team|
      add_team(team)
    end
    user.projects.each do |project|
      add_project(project)
    end
  end

  def add_team(team)
    team.messages.each do |message|
      @team_messages << message
      @messages << message
    end
  end

  def add_project(project)
    project.messages.each do |message|
      @project_messages << message
      @messages << message
    end
  end

  def messages
    sort_messages
    @messages
  end

  def team_messages
    sort_messages
    @team_messages
  end

  def project_messages
    sort_messages
    @project_messages
  end

  def sort_messages
    unless @sorted
      @team_messages.sort!    { |a,b| b.updated_at <=> a.updated_at }
      @project_messages.sort! { |a,b| b.updated_at <=> a.updated_at }
      @messages.sort!         { |a,b| b.updated_at <=> a.updated_at }
      @sorted = true
    end
  end
end
