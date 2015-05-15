class V1::UsersController < V1::BaseController

  def show
    unless current_user?
      super
      return
    end

    user_id = params[:id]
    @user = User.preload([:rooms, :teams, :projects]).find(user_id)
    @messages = Message.preload([:user, :room, :team, :project]).where({user_id: user_id})
    model_instance = @user

    # @user.each do |user|
    #   p "user : #{user.to_s}"
    #   p "user name : #{user.name}"
    #   user.teams.each do |team|
    #     p "team name: #{team.name}"
    #   end
    # end

    common_show model_instance
  end

  def show_by_major_and_minor_within_kanban
    @within_kanban = true
    model_instance = get_model(:major => params[:major], :minor => params[:minor])
    common_show model_instance
  end

end
