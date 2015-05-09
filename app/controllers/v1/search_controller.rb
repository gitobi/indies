class V1::SearchController < ApplicationController

  def index
    search params[:search]

    respond_to do |format|
      format.html # html
      format.json { render json: model_instance } # json
    end
  end

  def show
    search params[:search]

    respond_to do |format|
      format.html # html
      format.json { render json: model_instance } # json
    end

  end

  def search(search)

    if search
      @users = User.where(['name LIKE ?', "%#{search}%"])
      @projects = Project.where(['name LIKE ?', "%#{search}%"])
      @teams = Team.where(['name LIKE ?', "%#{search}%"])

    else
      @users = User.where(['name LIKE ?', "%#{search}%"])
      @projects = Project.where(['name LIKE ?', "%#{search}%"])
      @teams = Team.where(['name LIKE ?', "%#{search}%"])

    end

  end


end
