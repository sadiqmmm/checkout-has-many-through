class ExpertiseProfessorsController < ApplicationController
  before_action :set_expertise_professor, only: [:show, :edit, :update, :destroy]

  # GET /expertise_professors
  # GET /expertise_professors.json
  def index
    @expertise_professors = ExpertiseProfessor.all
  end

  # GET /expertise_professors/1
  # GET /expertise_professors/1.json
  def show
  end

  # GET /expertise_professors/new
  def new
    @expertise_professor = ExpertiseProfessor.new
  end

  # GET /expertise_professors/1/edit
  def edit
  end

  # POST /expertise_professors
  # POST /expertise_professors.json
  def create
    @expertise_professor = ExpertiseProfessor.new(expertise_professor_params)

    respond_to do |format|
      if @expertise_professor.save
        format.html { redirect_to @expertise_professor, notice: 'Expertise professor was successfully created.' }
        format.json { render :show, status: :created, location: @expertise_professor }
      else
        format.html { render :new }
        format.json { render json: @expertise_professor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expertise_professors/1
  # PATCH/PUT /expertise_professors/1.json
  def update
    respond_to do |format|
      if @expertise_professor.update(expertise_professor_params)
        format.html { redirect_to @expertise_professor, notice: 'Expertise professor was successfully updated.' }
        format.json { render :show, status: :ok, location: @expertise_professor }
      else
        format.html { render :edit }
        format.json { render json: @expertise_professor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expertise_professors/1
  # DELETE /expertise_professors/1.json
  def destroy
    @expertise_professor.destroy
    respond_to do |format|
      format.html { redirect_to expertise_professors_url, notice: 'Expertise professor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expertise_professor
      @expertise_professor = ExpertiseProfessor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expertise_professor_params
      params.require(:expertise_professor).permit(:expertise_id, :professor_id, :name)
    end
end
