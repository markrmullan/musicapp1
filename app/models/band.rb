class Band < ActiveRecord::Base
  has_many :albums, dependent: :destroy
  has_many :tracks,
    through: :albums,
    source: :tracks

  validates :name, presence: true

  def new
    render :new
  end

  def create
    band = Band.new(band_params)

    if band.save
      redirect_to bands_url
    else
      render :new
    end
  end



  private
  def band_params
    params.require(:band).permit(:name)
  end
end
