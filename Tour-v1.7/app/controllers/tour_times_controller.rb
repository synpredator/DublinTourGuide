class TourTimesController < ApplicationController
  before_action :set_tour_time, only: [:show, :edit, :update, :destroy]
  before_filter :verify_is_admin, except:[:index]
  
  # GET /tour_times
  # GET /tour_times.json
  def index
    @tour = Tour.all.map do |t|
      [t.title, t.id]
    end
    
    @dates = TourTime.date_list
    @passenger_options = [1,2,3,4,5,6]
    @tour_time_id = params[:tour_time_id]
    @tour_id = params[:tour_id]
    @depart_date = params[:departure_date]
    @passengers = params[:passengers]
    
    
		@tour_time = TourTime.search(params[:tour_id], params[:departure_date], params[:passenger])
								 		 
 
  end

  # GET /tour_times/1
  # GET /tour_times/1.json
  def show
  end

  # GET /tour_times/new
  def new
    
    @tour_time = TourTime.new
  end

  # GET /tour_times/1/edit
  def edit
  end

  # POST /tour_times
  # POST /tour_times.json
  def create
    
    @tour_time = TourTime.new(tour_time_params)

    respond_to do |format|
      if @tour_time.save
        format.html { redirect_to @tour_time, notice: 'Tour time was successfully created.' }
        format.json { render :show, status: :created, location: @tour_time }
      else
        format.html { render :new }
        format.json { render json: @tour_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tour_times/1
  # PATCH/PUT /tour_times/1.json
  def update
    respond_to do |format|
      if @tour_time.update(tour_time_params)
        format.html { redirect_to @tour_time, notice: 'Tour time was successfully updated.' }
        format.json { render :show, status: :ok, location: @tour_time }
      else
        format.html { render :edit }
        format.json { render json: @tour_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tour_times/1
  # DELETE /tour_times/1.json
  def destroy
    @tour_time.destroy
    respond_to do |format|
      format.html { redirect_to tour_times_url, notice: 'Tour time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour_time
      @tour_time = TourTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tour_time_params
      params.require(:tour_time).permit(:tour_id, :duration, :departure_date)
    end
    
    def verify_is_admin
      (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
    end    
end
