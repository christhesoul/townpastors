class PatrolsController < ApplicationController
  # GET /patrols
  # GET /patrols.json
  def index
    @patrols = Patrol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patrols }
    end
  end

  # GET /patrols/1
  # GET /patrols/1.json
  def show
    @patrol = Patrol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patrol }
    end
  end

  # GET /patrols/new
  # GET /patrols/new.json
  def new
    @patrol = Patrol.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patrol }
    end
  end

  # GET /patrols/1/edit
  def edit
    @patrol = Patrol.find(params[:id])
  end

  # POST /patrols
  # POST /patrols.json
  def create
    @patrol = Patrol.new(params[:patrol])

    respond_to do |format|
      if @patrol.save
        format.html { redirect_to @patrol, notice: 'Patrol was successfully created.' }
        format.json { render json: @patrol, status: :created, location: @patrol }
      else
        format.html { render action: "new" }
        format.json { render json: @patrol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patrols/1
  # PUT /patrols/1.json
  def update
    @patrol = Patrol.find(params[:id])

    respond_to do |format|
      if @patrol.update_attributes(params[:patrol])
        format.html { redirect_to @patrol, notice: 'Patrol was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @patrol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patrols/1
  # DELETE /patrols/1.json
  def destroy
    @patrol = Patrol.find(params[:id])
    @patrol.destroy

    respond_to do |format|
      format.html { redirect_to patrols_url }
      format.json { head :no_content }
    end
  end
end
