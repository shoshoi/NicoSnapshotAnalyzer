class SearchSettingsController < ApplicationController
  before_action :set_search_setting, only: [:show, :edit, :update, :destroy]

  # GET /search_settings
  # GET /search_settings.json
  def index
    api = NicoSnapshotApi::Client.new
    res = api.search_keyword("幕末志士")    
    migen = Migen::Mighash.new(res)
    @disp = migen.get_models.mig
    @search_settings = SearchSetting.all
  end

  # GET /search_settings/1
  # GET /search_settings/1.json
  def show
  end

  # GET /search_settings/new
  def new
    @search_setting = SearchSetting.new
  end

  # GET /search_settings/1/edit
  def edit
  end

  # POST /search_settings
  # POST /search_settings.json
  def create
    @search_setting = SearchSetting.new(search_setting_params)

    respond_to do |format|
      if @search_setting.save
        format.html { redirect_to @search_setting, notice: 'Search setting was successfully created.' }
        format.json { render :show, status: :created, location: @search_setting }
      else
        format.html { render :new }
        format.json { render json: @search_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /search_settings/1
  # PATCH/PUT /search_settings/1.json
  def update
    respond_to do |format|
      if @search_setting.update(search_setting_params)
        format.html { redirect_to @search_setting, notice: 'Search setting was successfully updated.' }
        format.json { render :show, status: :ok, location: @search_setting }
      else
        format.html { render :edit }
        format.json { render json: @search_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_settings/1
  # DELETE /search_settings/1.json
  def destroy
    @search_setting.destroy
    respond_to do |format|
      format.html { redirect_to search_settings_url, notice: 'Search setting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search_setting
      @search_setting = SearchSetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_setting_params
      params.require(:search_setting).permit(:word)
    end
end
