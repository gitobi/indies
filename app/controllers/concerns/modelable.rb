module Modelable
  extend ActiveSupport::Concern

  included do
    before_action :set_model_class

    # get_model(id: params[:id]) を行う
    # TODO params[:id] が uuid 形式であるかのチェックが必要
    # 結果は、戻り値で返却 および @foo_bar に格納される
    def get_model_by_id
      set_model get_model({:id => params[:id]})
    end

    # @model_class#common_find_by(args) を行う
    # 結果は、戻り値で返却 および @foo_bar に格納される
    def get_model(args={})
      set_model @model_class.common_find_by(args)
    end

    # @model_class#common_where(args) を行う
    # 結果は、戻り値で返却 および @foo_bars に格納される
    def get_models(args={})
      set_models @model_class.common_where(args)
    end

    # call @model_class#new
    def new_model
      model_instance = @model_class.common_new
      set_model model_instance
    end

    # @model_class#common_create(args) を行う
    # [saveの結果, saveの対象]を返却する
    # save 対象は @foo_bar に格納される
    def create_model(args)
      model_instance = @model_class.common_create(args)
      begin
        result = model_instance.save!
      rescue ActiveRecord::RecordNotUnique
        result = false
      end
      set_model model_instance
      return result, model_instance
    end

    # get_model_by_id で取得した instance に対して
    # @model_class#common_update(args) を行う
    # [updateの結果, updateの対象]を返却する
    # find に失敗した場合は [false, nil] となる
    # update 対象は @foo_bar に格納される
    def update_model(args)
      model_instance = get_model_by_id
      return [false, nil] if model_instance.blank?
      return [model_instance.common_update(args), model_instance]
    end

    # get_model_by_id で取得した instance に対して
    # @model_class#common_destroy を行う
    # [destroyの結果, destroyの対象]を返却する
    # find に失敗した場合は [false, nil] となる
    # destroy 対象は @foo_bar に格納される
    def destroy_model(args)
      model_instance = get_model_by_id
      return [false, nil] if model_instance.blank?
      return [model_instance.common_destroy, model_instance]
    end

    private

    # fooBar というモデル名に対して @foo_bar という変数に instance を格納する
    def set_model(instance)
      instance_variable_set(:"@#{@model_class.model_to_s_underscore}", instance)
    end

    # fooBar というモデル名に対して @foo_bars という変数に instances を格納する
    def set_models(instances)
      instance_variable_set(:"@#{@model_class.model_to_s_underscores}", instances)
    end

    # コントローラに対応するモデルクラスを@modelにセットする
    def set_model_class
      @model_class = controller_name.classify.constantize
    end

  end
end
