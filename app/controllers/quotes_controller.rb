class QuotesController < ApplicationController
  def index
    quotes = Quote.all
    render :json => quotes.as_json(only: [:text]), status: :ok
  end

  def show
    random = rand(Quote.count)
    quote = Quote.find(random)

    if quote
      show_quote_hash = {
        text: quote.text
      }
      render json: show_quote_hash.as_json, status: :ok
    else
      render json: { ok: false, errors: {id: ["Quote not found"]} }, status: :not_found
    end
  end
end
