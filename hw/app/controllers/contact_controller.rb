class ContactController < ApplicationController
  def submitted
  @firstName = params[:firstName]
  @lastName = params[:lastName]
  end
end
