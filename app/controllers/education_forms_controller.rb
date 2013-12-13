class EducationFormsController < ApplicationController
  before_action :set_education_form, only: [:show, :edit, :update, :destroy]

  # GET /education_forms
  # GET /education_forms.json
  def index
    @education_forms = EducationForm.all
  end

  # GET /education_forms/1
  # GET /education_forms/1.json
  def show
  end

  # GET /education_forms/new
  def new
    @education_form = EducationForm.new
  end

  # GET /education_forms/1/edit
  def edit
  end

  # POST /education_forms
  # POST /education_forms.json
  def create
    @education_form = EducationForm.new(education_form_params)

    respond_to do |format|
      if @education_form.save
        format.html { redirect_to @education_form, notice: 'Education form was successfully created.' }
        format.json { render action: 'show', status: :created, location: @education_form }
      else
        format.html { render action: 'new' }
        format.json { render json: @education_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /education_forms/1
  # PATCH/PUT /education_forms/1.json
  def update
    respond_to do |format|
      if @education_form.update(education_form_params)
        format.html { redirect_to @education_form, notice: 'Education form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @education_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /education_forms/1
  # DELETE /education_forms/1.json
  def destroy
    @education_form.destroy
    respond_to do |format|
      format.html { redirect_to education_forms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education_form
      @education_form = EducationForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def education_form_params
      params.require(:education_form).permit(:name)
    end
end
