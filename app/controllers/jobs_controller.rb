class JobsController < ApplicationController
  def index
    @jobs = Job.all.order(updated_at: :desc)
  end

  def show
    @job = Job.find(params[:id])
  end
end
