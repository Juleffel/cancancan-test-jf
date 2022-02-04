class Project2sController < ApplicationController
  load_and_authorize_resource :company
  load_and_authorize_resource :project2, through: :company

  # GET /project2s or /project2s.json
  def index
  end

  # GET /project2s/1 or /project2s/1.json
  def show
  end

  # GET /project2s/new
  def new
    @project2 = Project2.new
  end

  # GET /project2s/1/edit
  def edit
  end

  # POST /project2s or /project2s.json
  def create
    respond_to do |format|
      if @project2.save
        format.html { redirect_to project2_url(@project2), notice: "Project2 was successfully created." }
        format.json { render :show, status: :created, location: @project2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project2s/1 or /project2s/1.json
  def update
    respond_to do |format|
      if @project2.update(project2_params)
        format.html { redirect_to project2_url(@project2), notice: "Project2 was successfully updated." }
        format.json { render :show, status: :ok, location: @project2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project2s/1 or /project2s/1.json
  def destroy
    @project2.destroy

    respond_to do |format|
      format.html { redirect_to project2s_url, notice: "Project2 was successfully destroyed." }
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
    def project2_params
      params.require(:project2).permit(:name, :company_id)
    end
end
