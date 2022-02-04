class Project5sController < ApplicationController
  load_and_authorize_resource :company
  load_and_authorize_resource :project5, through: :company

  # GET /project5s or /project5s.json
  def index
  end

  # GET /project5s/1 or /project5s/1.json
  def show
  end

  # GET /project5s/new
  def new
  end

  # GET /project5s/1/edit
  def edit
  end

  # POST /project5s or /project5s.json
  def create
    respond_to do |format|
      if @project5.save
        format.html { redirect_to company_project5_url(@company, @project5), notice: "Project5 was successfully created." }
        format.json { render :show, status: :created, location: @project5 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project5s/1 or /project5s/1.json
  def update
    respond_to do |format|
      if @project5.update(project5_params)
        format.html { redirect_to company_project5_url(@company, @project5), notice: "Project5 was successfully updated." }
        format.json { render :show, status: :ok, location: @project5 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project5s/1 or /project5s/1.json
  def destroy
    @project5.destroy

    respond_to do |format|
      format.html { redirect_to company_project5s_url(@company), notice: "Project5 was successfully destroyed." }
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
    def project5_params
      params.require(:project5).permit(:name, :company_id)
    end
end
