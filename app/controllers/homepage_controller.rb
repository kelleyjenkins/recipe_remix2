class HomepageController < ApplicationController
  def index
    # # ingredients = {:criteria => {:allowedIngredient=> "#{params[:q]}"}}
    #
    # conn = Faraday.new(url: "http://api.yummly.com") do |faraday|
    #
    #   faraday.headers["X-Yummly-App-ID"] = ENV["yummly_app_id"]
    #   faraday.headers["X-Yummly-App-Key"] = ENV["yummly_api_key"]
    #   faraday.adapter Faraday.default_adapter
    #   faraday.options.params_encoder = Faraday::FlatParamsEncoder
    # end
    #
    # response = conn.get("/v1/api/recipes") do |req|
    #   req.params['allowedIngredient'] = params[:q]
    # end
    # @results = JSON.parse(response.body, symbolize_names: true)[:matches].map do |recipe|
    #   Recipe.new(recipe)
    # end
    # binding.pry
  end

end
