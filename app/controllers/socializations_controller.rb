class SocializationsController < ApplicationController
  before_filter :load_socializable

  def like
    current_user.toggle_like!(@socializable)
    respond_to do |format|
      format.js {}
    end
  end


  private
  def load_socializable
    @socializable =
        case
          when id = params[:question_id] # Must be before :item_id, since it's nested under it.
            Question.find(id)
          # when id = params[:item_id]
          #   @community.items.find(id)
          # when id = params[:user_id]
          #   User.find(id)
          # when id = params[:category_id]
          #   @community.categories.find_by_id(id)
          else
            raise ArgumentError, "Unsupported socializable model, params: " +
                params.keys.inspect
        end
    raise ActiveRecord::RecordNotFound unless @socializable
  end
end