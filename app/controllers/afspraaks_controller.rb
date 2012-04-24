class AfspraaksController < ApplicationController
  # GET /afspraaks
  # GET /afspraaks.json
  def index
    @afspraaks = Afspraak.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @afspraaks }
    end
  end

  # GET /afspraaks/1
  # GET /afspraaks/1.json
  def show
    @afspraak = Afspraak.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @afspraak }
    end
  end

  # GET /afspraaks/new
  # GET /afspraaks/new.json
  def new
    @afspraak = Afspraak.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @afspraak }
    end
  end

  # GET /afspraaks/1/edit
  def edit
    @afspraak = Afspraak.find(params[:id])
  end

  # POST /afspraaks
  # POST /afspraaks.json
  def create
    @afspraak = Afspraak.new(params[:afspraak])

    respond_to do |format|
      if @afspraak.save
        format.html { redirect_to @afspraak, notice: 'Uw afspraak is genoteerd.' }
        format.json { render json: @afspraak, status: :created, location: @afspraak }
      else
        format.html { render action: "new" }
        format.json { render json: @afspraak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /afspraaks/1
  # PUT /afspraaks/1.json
  def update
    @afspraak = Afspraak.find(params[:id])

    respond_to do |format|
      if @afspraak.update_attributes(params[:afspraak])
        format.html { redirect_to @afspraak, notice: 'Afspraak was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @afspraak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /afspraaks/1
  # DELETE /afspraaks/1.json
  def destroy
    @afspraak = Afspraak.find(params[:id])
    @afspraak.destroy

    respond_to do |format|
      format.html { redirect_to afspraaks_url }
      format.json { head :no_content }
    end
  end
end
