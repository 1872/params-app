class PagesController < ApplicationController
  def query
    @message = params[:purple_hippo]
    @second_message = params[:green_llama]
    render 'query.html.erb'
  end
end
