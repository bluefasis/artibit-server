class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # GET /overall/:id
  def overall
    @exhibition = Exhibition.find(params[:id])
    data = {
        exhibition: @exhibition,
        arts: Art.arts_in_exhibition(@exhibition),
    }
    render json: data, status: :ok
  end

  # GET /artist/:id
  def artist
    @artist = Artist.find(params[:id])
    render json: @artist.as_json(except: [:created_at, :updated_at]), status: :ok
  end

  # GET /art/:id
  def art
    @art = Art.find(params[:id])
    render json: @art.as_json(except: [:created_at, :updated_at]), status: :ok
  end
end
