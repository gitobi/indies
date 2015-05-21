class V1::UsersController < V1::BaseController

  def etid
    unless current_user?
      home
      return
    end

    @user = User.preload(:roles, :teams, :projects).find(@logedin_user.id)
    model_instance = @user
    common_edit(model_instance)
  end

  def update
    unless current_user?
      home
      return
    end

    @user = User.preload(:roles, :teams, :projects).find(@logedin_user.id)
    if @user.update_roles(params)
      p "roles_updated!"
      # @user.reload
    end

    result, model_instance = update_model(@user, params)
    if result
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def show
    unless current_user?
      super
      return
    end

    user_id = params[:id]
    @user = User.preload(:roles, :teams, :projects).find(user_id)
    model_instance = @user

    p "debug : " + @user.detail
    # p "debug"
    # @user.teams.each { |team|
    #   team.team_messages.each { |message|
    #     p "message : #{message.to_s}"
    #     p "message : #{message.text}"
    #   }
    # }

    @timeline = Timeline.new
    @timeline.add_user(@user)
    # p "messages : #{@messages.to_s}"
    # @messages.each do |message|
    #   p "message : #{message.user}"

    # end

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
