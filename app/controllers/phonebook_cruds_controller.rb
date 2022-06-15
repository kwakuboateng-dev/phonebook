class PhonebookCrudsController < ApplicationController
  before_action :set_phonebook_crud, only: %i[ show edit update destroy ]

  # GET /phonebook_cruds or /phonebook_cruds.json
  def index
    @phonebook_cruds = PhonebookCrud.all
  end

  # GET /phonebook_cruds/1 or /phonebook_cruds/1.json
  def show
  end

  # GET /phonebook_cruds/new
  def new
    @phonebook_crud = PhonebookCrud.new
  end

  # GET /phonebook_cruds/1/edit
  def edit
  end

  # POST /phonebook_cruds or /phonebook_cruds.json
  def create
    @phonebook_crud = PhonebookCrud.new(phonebook_crud_params)

    respond_to do |format|
      if @phonebook_crud.save
        format.html { redirect_to phonebook_crud_url(@phonebook_crud), notice: "Phonebook crud was successfully created." }
        format.json { render :show, status: :created, location: @phonebook_crud }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @phonebook_crud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phonebook_cruds/1 or /phonebook_cruds/1.json
  def update
    respond_to do |format|
      if @phonebook_crud.update(phonebook_crud_params)
        format.html { redirect_to phonebook_crud_url(@phonebook_crud), notice: "Phonebook crud was successfully updated." }
        format.json { render :show, status: :ok, location: @phonebook_crud }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @phonebook_crud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phonebook_cruds/1 or /phonebook_cruds/1.json
  def destroy
    @phonebook_crud.destroy

    respond_to do |format|
      format.html { redirect_to phonebook_cruds_url, notice: "Phonebook crud was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phonebook_crud
      @phonebook_crud = PhonebookCrud.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def phonebook_crud_params
      params.require(:phonebook_crud).permit(:first_name, :last_name, :phone_number, :address)
    end
end
