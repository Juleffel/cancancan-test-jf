class Project3sController < ApplicationController
  load_and_authorize_resource :company
  load_and_authorize_resource :project3, through: :company

  # GET /project3s or /project3s.json
  def index
  end

  # GET /project3s/1 or /project3s/1.json
  def show
  end

  # GET /project3s/new
  def new
  end

  # GET /project3s/1/edit
  def edit
  end

  # POST /project3s or /project3s.json
  def create
    respond_to do |format|
      if @project3.save
        format.html { redirect_to project3_url(@project3), notice: "Project3 was successfully created." }
        format.json { render :show, status: :created, location: @project3 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project3s/1 or /project3s/1.json
  def update
    respond_to do |format|
      if @project3.update(project3_params)
        format.html { redirect_to project3_url(@project3), notice: "Project3 was successfully updated." }
        format.json { render :show, status: :ok, location: @project3 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project3s/1 or /project3s/1.json
  def destroy
    @project3.destroy

    respond_to do |format|
      format.html { redirect_to project3s_url, notice: "Project3 was successfully destroyed." }
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
    def project3_params
      params.require(:project3).permit(:name, :company_id)
    end
end
