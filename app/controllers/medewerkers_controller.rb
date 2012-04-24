class MedewerkersController < ApplicationController
  # GET /medewerkers
  # GET /medewerkers.json
  def index
    @medewerkers = Medewerker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @medewerkers }
    end
  end

  # GET /medewerkers/1
  # GET /medewerkers/1.json
  def show
    @medewerker = Medewerker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @medewerker }
    end
  end

  # GET /medewerkers/new
  # GET /medewerkers/new.json
  def new
    @medewerker = Medewerker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @medewerker }
    end
  end

  # GET /medewerkers/1/edit
  def edit
    @medewerker = Medewerker.find(params[:id])
  end

  # POST /medewerkers
  # POST /medewerkers.json
  def create
    @medewerker = Medewerker.new(params[:medewerker])

    respond_to do |format|
      if @medewerker.save
        format.html { redirect_to @medewerker, notice: 'Medewerker was successfully created.' }
        format.json { render json: @medewerker, status: :created, location: @medewerker }
      else
        format.html { render action: "new" }
        format.json { render json: @medewerker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /medewerkers/1
  # PUT /medewerkers/1.json
  def update
    @medewerker = Medewerker.find(params[:id])

    respond_to do |format|
      if @medewerker.update_attributes(params[:medewerker])
        format.html { redirect_to @medewerker, notice: 'Medewerker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @medewerker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medewerkers/1
  # DELETE /medewerkers/1.json
  def destroy
    @medewerker = Medewerker.find(params[:id])
    @medewerker.destroy

    respond_to do |format|
      format.html { redirect_to medewerkers_url }
      format.json { head :no_content }
    end
  end
end
