class User < BaseModel

  belongs_to :account

  has_many :team_messages, -> { includes [:team] }
  has_many :project_messages, -> { includes [:project] }

  has_many :user_roles
  has_many :team_users
  has_many :project_users

  has_many :roles,    :through => :user_roles
  has_many :teams,    :through => :team_users
  has_many :projects, :through => :project_users

  accepts_nested_attributes_for :roles, allow_destroy: true

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

  def update_roles(args)
    new_role_ids = args["user"]["role_ids"].select { |item| item.present? }
    now_role_ids = user_roles.pluck("role_id")
    need_create_role_ids = new_role_ids - now_role_ids
    need_delete_role_ids = now_role_ids - new_role_ids
    if (need_create_role_ids.blank?) && (need_delete_role_ids.blank?)
      return false
    end

    need_create_role_ids.each do |role_id|
      user_roles.create(role_id: role_id)
    end
    need_delete_role_ids.each do |role_id|
      user_roles.each do |user_role|
        if role_id == user_role.role_id
          user_role.destroy
        end
      end
    end
    return true
  end

  def self.filter_model_params(args)
    # p "debug aa"
    # p args

    # converted = args
    # role_ids = args["user"]["role_ids"].select { |item| item.present? }.map { |v| {"id": v} }

    # p role_ids
    # converted["user"]["roles_attributes"] = role_ids
    # converted["user"].delete("role_ids")
    # # Hash[converted["user"]["roles"].map { |k,v| [@convert_table[k], v] }]


    # p converted

    require_args = args.require(:user).permit(:name, :scope, :picture, :comment, :detail)
    # p require_args
    return require_args
  end

end
