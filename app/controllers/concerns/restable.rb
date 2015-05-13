module Restable
  extend ActiveSupport::Concern
  include Modelable

  included do


    def index
      model_instances = get_models
      if model_instances.blank?
        record_not_found
      else
        common_index model_instances
      end
    end

    def show
      model_instance = get_model({id: params[:id]})
      if model_instance.blank?
        record_not_found
      else
        common_show model_instance
      end
    end

    def new
      model_instance = new_model
      common_new(model_instance)
    end

    def create
      result, model_instance = create_model(params)
      unless result
        # save に失敗
        conflict_duplication_post_request
        return
      end
      redirect_to action: 'show', id: model_instance.id
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
      common_show model_instance
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
      common_show model_instance
    end

    def common_index(model_instances)
      if model_instances.blank?
        record_not_found
      else
        common_render model_instances
      end
    end

    def common_show(model_instance)
      if model_instance.blank?
        record_not_found
      else
        common_render model_instance
      end
    end

    def common_new(model_instance)
      if model_instance.blank?
        record_not_found
      else
        common_render model_instance
      end
    end

    def common_render(model_instance)
        respond_to do |format|
          format.html # html
          format.json { render json: model_instance } # json
        end
    end

  end
end
