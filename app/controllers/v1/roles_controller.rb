class V1::RolesController < V1::BaseController


  def show
    @roles = Role.all
    @role = Role.find_by({id: params[:id]})
    @joined_role = Role.includes(:users).find_by({id: params[:id], users: {scope: "public"}})
    # @role = Role.preload(:users).where(id: params[:id])

    # @role = Role.find_by(id: params[:id])
    # @role.users.where(scope: "public").each do |user|
    #   p user.id
    # end

    model_instance = @role
    common_show model_instance
  end

end
