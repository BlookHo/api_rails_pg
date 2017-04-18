class Api::V1::JobsController < ApplicationController
  before_action :set_job, only: [:show, :update, :destroy]

  def index
    if params[:company_id]
      @jobs = Company.find(params[:company_id]).jobs
    else
      @jobs = Job.all
    end
    render json: { jobs: @jobs }, except: [:id, :created_at, :updated_at]
  end

  def show
    render json: @job
  end

  # POST /jobs
  def create
    @job = Job.new(job_params)
    if @job.save!
      render json: @job.as_json, status: :created
    else
      render json: {job: @job.errors, status: :no_content}
    end
  end

  def update
    if @job.update(job_params)
      render json: @job
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @job.destroy
    render json: { deleted_job: @job,
                   code: 200,
                   status: :success,
    }, except: [:created_at, :updated_at]
  end

  # Mark job as deleted whithout destroy
  # When the job is deleted/remove it should be kept in the database and marked as such.
  # def destroy
  #   if @job.deleted
  #     render json: { deleted_job: [],
  #                    deleted_already: not_modified,
  #     }
  #   else
  #     @job.delete_event
  #     render json: { deleted_job: @job,
  #                    code: 200,
  #                    status: :success,
  #     }, except: [:created_at, :updated_at]
  #   end
  # end

  private
  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.permit(:place, :name, :company_id )
  end
end
#   params = ActionController::Parameters.new(user: { name: 'Francesco', age: 22, role: 'admin' })
#   permitted = params.require(:user).permit(:name, :age)
#   permitted.permitted?      # => true
#   permitted.has_key?(:name) # => true
#   permitted.has_key?(:age)  # => true
#   permitted.has_key?(:role) # => false
