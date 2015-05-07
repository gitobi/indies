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
      @items = Person.where(['name LIKE ?', "%#{search}%"])

    else
      @items = Person.where(['name LIKE ?', "%#{search}%"])

    end

  end


end
