class AssumptionsController < ApplicationController
  def index
    @assumptions = Assumption.all
  end

  def show
    @assumption = Assumption.find(params[:id])
    @reinterpretations = @assumption.reinterpretations
  end

  def new
    @assumption = Assumption.new
  end

  def create
    @assumption = Assumption.new
    @assumption.connector = params[:connector]
    @assumption.body = params[:body]
    @assumption.setup_id = params[:setup_id]

    if @assumption.save
      redirect_to :back, :notice => "Assumption created successfully."
    else
      render 'new'
    end
  end

  def edit
    @assumption = Assumption.find(params[:id])
  end

  def update
    @assumption = Assumption.find(params[:id])

    @assumption.connector = params[:connector]
    @assumption.body = params[:body]
    @assumption.setup_id = params[:setup_id]

    if @assumption.save
      redirect_to :back, :notice => "Assumption updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @assumption = Assumption.find(params[:id])

    @assumption.destroy

    redirect_to :back, :notice => "Assumption deleted."
  end
end
