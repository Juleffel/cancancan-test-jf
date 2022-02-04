class Project4sController < ApplicationController
  load_and_authorize_resource :company
  load_and_authorize_resource :project4, through: :company

  # GET /project4s or /project4s.json
  def index
  end

  # GET /project4s/1 or /project4s/1.json
  def show
  end

  # GET /project4s/new
  def new
  end

  # GET /project4s/1/edit
  def edit
  end

  # POST /project4s or /project4s.json
  def create
    respond_to do |format|
      if @project4.save
        format.html { redirect_to company_project4_url(@company, @project4), notice: "Project4 was successfully created." }
        format.json { render :show, status: :created, location: @project4 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project4s/1 or /project4s/1.json
  def update
    respond_to do |format|
      if @project4.update(project4_params)
        format.html { redirect_to company_project4_url(@company, @project4), notice: "Project4 was successfully updated." }
        format.json { render :show, status: :ok, location: @project4 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project4s/1 or /project4s/1.json
  def destroy
    @project4.destroy

    respond_to do |format|
      format.html { redirect_to company_project4s_url(@company), notice: "Project4 was successfully destroyed." }
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
    def project4_params
      params.require(:project4).permit(:name, :company_id)
    end
end
