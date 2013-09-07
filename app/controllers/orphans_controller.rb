class OrphansController < ApplicationController
  # GET /orphans
  # GET /orphans.json
  def index
    @orphans = Orphan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orphans }
    end
  end

  # GET /orphans/1
  # GET /orphans/1.json
  def show
    @orphan = Orphan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orphan }
    end
  end

  # GET /orphans/new
  # GET /orphans/new.json
  def new
    @orphan = Orphan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orphan }
    end
  end

  # GET /orphans/1/edit
  def edit
    @orphan = Orphan.find(params[:id])
  end

  # POST /orphans
  # POST /orphans.json
  def create
    puts "Received post with params #{params}"
    @orphan = Orphan.new(params[:orphan])

    respond_to do |format|
      if @orphan.save
        format.html { redirect_to @orphan, notice: 'Orphan was successfully created.' }
        format.json { render json: @orphan, status: :created, location: @orphan }
      else
        format.html { render action: "new" }
        format.json { render json: @orphan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orphans/1
  # PUT /orphans/1.json
  def update
    @orphan = Orphan.find(params[:id])

    respond_to do |format|
      if @orphan.update_attributes(params[:orphan])
        format.html { redirect_to @orphan, notice: 'Orphan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orphan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orphans/1
  # DELETE /orphans/1.json
  def destroy
    @orphan = Orphan.find(params[:id])
    @orphan.destroy

    respond_to do |format|
      format.html { redirect_to orphans_url }
      format.json { head :no_content }
    end
  end
end
