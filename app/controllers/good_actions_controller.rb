class GoodActionsController < ApplicationController
  before_action :set_good_action, only: [:show, :update, :destroy]

  # GET /good_actions
  def index
    @good_actions = GoodAction.all

    render json: @good_actions
  end

  # GET /good_actions/1
  def show
    render json: @good_action
  end

  # POST /good_actions
  def create
    @good_action = GoodAction.new(good_action_params)

    if @good_action.save
      render json: @good_action, status: :created, location: @good_action
    else
      render json: @good_action.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /good_actions/1
  def update
    if @good_action.update(good_action_params)
      render json: @good_action
    else
      render json: @good_action.errors, status: :unprocessable_entity
    end
  end

  # DELETE /good_actions/1
  def destroy
    @good_action.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_good_action
      @good_action = GoodAction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def good_action_params
      params.require(:good_action).permit(:description, :score, :sender_id, :receiver_id)
    end
end
