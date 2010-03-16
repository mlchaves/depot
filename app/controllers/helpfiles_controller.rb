class HelpfilesController < ApplicationController
  # GET /helpfiles
  # GET /helpfiles.xml
  def index
    @helpfiles = Helpfile.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @helpfiles }
    end
  end

  # GET /helpfiles/1
  # GET /helpfiles/1.xml
  def show
    @helpfile = Helpfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @helpfile }
    end
  end

  # GET /helpfiles/new
  # GET /helpfiles/new.xml
  def new
    @helpfile = Helpfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @helpfile }
    end
  end

  # GET /helpfiles/1/edit
  def edit
    @helpfile = Helpfile.find(params[:id])
  end

  # POST /helpfiles
  # POST /helpfiles.xml
  def create
    @helpfile = Helpfile.new(params[:helpfile])

    respond_to do |format|
      if @helpfile.save
        flash[:notice] = 'Helpfile was successfully created.'
        format.html { redirect_to(@helpfile) }
        format.xml  { render :xml => @helpfile, :status => :created, :location => @helpfile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @helpfile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /helpfiles/1
  # PUT /helpfiles/1.xml
  def update
    @helpfile = Helpfile.find(params[:id])

    respond_to do |format|
      if @helpfile.update_attributes(params[:helpfile])
        flash[:notice] = 'Helpfile was successfully updated.'
        format.html { redirect_to(@helpfile) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @helpfile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /helpfiles/1
  # DELETE /helpfiles/1.xml
  def destroy
    @helpfile = Helpfile.find(params[:id])
    @helpfile.destroy

    respond_to do |format|
      format.html { redirect_to(helpfiles_url) }
      format.xml  { head :ok }
    end
  end
end
