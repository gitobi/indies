module Restable
  extend ActiveSupport::Concern
  include Modelable
  
  included do
    
    def index
      model_instances = get_models
      if model_instances.blank?
        record_not_found
      else
        render :index
      end
    end
    
    def show
      model_instance = get_model({id: params[:id]})
      if model_instance.blank?
        record_not_found
      else
        render :show
      end
    end
    
    def new
      # TODO カラム一覧でも返却する？
      # てか、この書き方だと、 new が見つかりません て出る
      bad_request
    end
    
    def create
      result, model_instance = create_model(params)
      unless result
        # save に失敗
        conflict_duplication_post_request
        return
      end
      render :show
    end
    
    def edit
      # TODO カラム一覧でも返却する？
      show
    end
    

    def destroy
      result, model_instance = destroy_model(params)
      unless result
        if model_instance.blank?
          # find に失敗
          record_not_found
          return
        else
          # destroy に失敗
          bad_request
          return
        end
      end
      render :show
    end

    def update
      result, model_instance = update_model(params)
      unless result
        if model_instance.blank?
          # find に失敗
          record_not_found
          return
        else
          # update に失敗
          bad_request
          return
        end
      end
      render :show
    end

    def common_show(model_instance)
      if model_instance.blank?
        record_not_found
      else
        render :show
      end
    end

  end
end