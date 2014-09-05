class TvChannelsController < ApplicationController
  before_action :set_tv_channel, only: [:show, :edit, :update, :destroy]

  # GET /tv_channels
  # GET /tv_channels.json
  def index
    @tv_channels = TvChannel.all
  end

  # GET /tv_channels/1
  # GET /tv_channels/1.json
  def show
  end

  # GET /tv_channels/new
  def new
    @tv_channel = TvChannel.new
  end

  # GET /tv_channels/1/edit
  def edit
  end

  # POST /tv_channels
  # POST /tv_channels.json
  def create
    @tv_channel = TvChannel.new(tv_channel_params)

    respond_to do |format|
      if @tv_channel.save
        format.html { redirect_to @tv_channel, notice: 'Tv channel was successfully created.' }
        format.json { render :show, status: :created, location: @tv_channel }
      else
        format.html { render :new }
        format.json { render json: @tv_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tv_channels/1
  # PATCH/PUT /tv_channels/1.json
  def update
    respond_to do |format|
      if @tv_channel.update(tv_channel_params)
        format.html { redirect_to @tv_channel, notice: 'Tv channel was successfully updated.' }
        format.json { render :show, status: :ok, location: @tv_channel }
      else
        format.html { render :edit }
        format.json { render json: @tv_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tv_channels/1
  # DELETE /tv_channels/1.json
  def destroy
    @tv_channel.destroy
    respond_to do |format|
      format.html { redirect_to tv_channels_url, notice: 'Tv channel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tv_channel
      @tv_channel = TvChannel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tv_channel_params
      params.require(:tv_channel).permit(:name, :bt, :freeview, :sky, :virgin, :youview, :rights_held, :weblink, :hd)
    end
end
