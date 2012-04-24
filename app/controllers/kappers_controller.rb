class KappersController < ApplicationController
  # GET /kappers
  # GET /kappers.json
  def index
    @kappers = Kapper.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kappers }
    end
  end

  # GET /kappers/1
  # GET /kappers/1.json
  def show
    @kapper = Kapper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kapper }
    end
  end

  # GET /kappers/new
  # GET /kappers/new.json
  def new
    @kapper = Kapper.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kapper }
    end
  end

  # GET /kappers/1/edit
  def edit
    @kapper = Kapper.find(params[:id])
  end

  # POST /kappers
  # POST /kappers.json
  def create
    @kapper = Kapper.new(params[:kapper])

    respond_to do |format|
      if @kapper.save
        format.html { redirect_to @kapper, notice: 'Kapper was successfully created.' }
        format.json { render json: @kapper, status: :created, location: @kapper }
      else
        format.html { render action: "new" }
        format.json { render json: @kapper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kappers/1
  # PUT /kappers/1.json
  def update
    @kapper = Kapper.find(params[:id])

    respond_to do |format|
      if @kapper.update_attributes(params[:kapper])
        format.html { redirect_to @kapper, notice: 'Kapper was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kapper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kappers/1
  # DELETE /kappers/1.json
  def destroy
    @kapper = Kapper.find(params[:id])
    @kapper.destroy

    respond_to do |format|
      format.html { redirect_to kappers_url }
      format.json { head :no_content }
    end
  end
end
