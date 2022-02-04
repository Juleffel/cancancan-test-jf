class Project1sController < ApplicationController
  load_and_authorize_resource :company
  load_and_authorize_resource :project1, through: :company

  # GET /project1s or /project1s.json
  def index
  end

  # GET /project1s/1 or /project1s/1.json
  def show
  end

  # GET /project1s/new
  def new
  end

  # GET /project1s/1/edit
  def edit
  end

  # POST /project1s or /project1s.json
  def create
    respond_to do |format|
      if @project1.save
        format.html { redirect_to company_project1_url(@company, @project1), notice: "Project1 was successfully created." }
        format.json { render :show, status: :created, location: @project1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project1s/1 or /project1s/1.json
  def update
    respond_to do |format|
      if @project1.update(project1_params)
        format.html { redirect_to company_project1_url(@company, @project1), notice: "Project1 was successfully updated." }
        format.json { render :show, status: :ok, location: @project1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project1s/1 or /project1s/1.json
  def destroy
    @project1.destroy

    respond_to do |format|
      format.html { redirect_to company_project1s_url(@company), notice: "Project1 was successfully destroyed." }
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
    def project1_params
      params.require(:project1).permit(:name, :company_id)
    end
end
