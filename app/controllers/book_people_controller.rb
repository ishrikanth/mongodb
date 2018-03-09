class BookPeopleController < ApplicationController
  before_action :set_book_person, only: [:show, :edit, :update, :destroy]

  # GET /book_people
  # GET /book_people.json
  def index
    @book_people = BookPerson.all
  end

  # GET /book_people/1
  # GET /book_people/1.json
  def show
  end

  # GET /book_people/new
  def new
    @book_person = BookPerson.new
  end

  # GET /book_people/1/edit
  def edit
  end

  # POST /book_people
  # POST /book_people.json
  def create
    @book_person = BookPerson.new(book_person_params)

    respond_to do |format|
      if @book_person.save
        format.html { redirect_to @book_person, notice: 'Book person was successfully created.' }
        format.json { render :show, status: :created, location: @book_person }
      else
        format.html { render :new }
        format.json { render json: @book_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_people/1
  # PATCH/PUT /book_people/1.json
  def update
    respond_to do |format|
      if @book_person.update(book_person_params)
        format.html { redirect_to @book_person, notice: 'Book person was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_person }
      else
        format.html { render :edit }
        format.json { render json: @book_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_people/1
  # DELETE /book_people/1.json
  def destroy
    @book_person.destroy
    respond_to do |format|
      format.html { redirect_to book_people_url, notice: 'Book person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_person
      @book_person = BookPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_person_params
      params.require(:book_person).permit(:person_id, :book_id)
    end
end
