class Image < ApplicationRecord
  def index
    images = Image.all
    render :json => images.as_json(only: [:address]), status: :ok
  end

  def show
    image = Image.find_by(id: params[:id])
    if image
      show_image_hash = {
        address: image.address,
      }
      render json: show_image_hash.as_json, status: :ok
    else
      render json: { ok: false, errors: {id: ["Image not found"]} }, status: :not_found
    end
  end
end
