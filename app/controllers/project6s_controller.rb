class Project6sController < ApplicationController
  load_and_authorize_resource :company
  load_and_authorize_resource :project6, through: :company

  # GET /project6s or /project6s.json
  def index
  end

  # GET /project6s/1 or /project6s/1.json
  def show
  end

  # GET /project6s/new
  def new
  end

  # GET /project6s/1/edit
  def edit
  end

  # POST /project6s or /project6s.json
  def create
    respond_to do |format|
      if @project6.save
        format.html { redirect_to company_project6_url(@company, @project6), notice: "Project6 was successfully created." }
        format.json { render :show, status: :created, location: @project6 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project6s/1 or /project6s/1.json
  def update
    respond_to do |format|
      if @project6.update(project6_params)
        format.html { redirect_to company_project6_url(@company, @project6), notice: "Project6 was successfully updated." }
        format.json { render :show, status: :ok, location: @project6 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project6s/1 or /project6s/1.json
  def destroy
    @project6.destroy

    respond_to do |format|
      format.html { redirect_to company_project6s_url(@company), notice: "Project6 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def custom_collection
    render :index
  end

  def custom_member
    render :show
  end

  private
    # Only allow a list of trusted parameters through.
    def project6_params
      params.require(:project6).permit(:name, :company_id)
    end
end
