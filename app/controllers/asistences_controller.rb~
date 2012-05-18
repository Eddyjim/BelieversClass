class AsistencesController < ApplicationController
  # GET /asistences
  # GET /asistences.json
  def index
    @asistences = Asistence.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @asistences }
    end
  end

  # GET /asistences/1
  # GET /asistences/1.json
  def show
    @asistence = Asistence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @asistence }
    end
  end

  # GET /asistences/new
  # GET /asistences/new.json
  def new
    @group = Teacher.find(session[:id]).group
    @asistence = Asistence.new
    @asistence.group = @group
    @group.asistences << @asistence

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @asistence }
    end
  end

  # GET /asistences/1/edit
  def edit
    @asistence = Asistence.find(params[:id])
  end

  # POST /asistences
  # POST /asistences.json
  def create
    @group = Group.find(params[:group_id])
    @asistence = Asistence.new(params[:asistence])

    respond_to do |format|
      if @asistence.save
        format.html { redirect_to @group, :notice => 'Asistence was successfully created.' }
        format.json { render :json => @asistence, :status => :created, :location => @asistence }
      else
        format.html { render :action => "new" }
        format.json { render :json => @asistence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /asistences/1
  # PUT /asistences/1.json
  def update
    @asistence = Asistence.find(params[:id])
    @group = @asistence.group

    respond_to do |format|
      if @asistence.update_attributes(params[:asistence])
        format.html { redirect_to @group, :notice => 'Asistence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @asistence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /asistences/1
  # DELETE /asistences/1.json
  def destroy
    @asistence = Asistence.find(params[:id])
    @asistence.destroy

    respond_to do |format|
      format.html { redirect_to asistences_url }
      format.json { head :no_content }
    end
  end
end
