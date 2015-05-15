class V1::RootController < ApplicationController

  def index
    respond_to do |format|
      format.html # html
      format.json { render json: model_instance } # json
    end
  end

end
