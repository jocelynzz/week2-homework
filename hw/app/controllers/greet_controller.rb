class GreetController < ApplicationController
def show
	if (params.has_key? (:salutation))
		render html: (('<h1>' + params[:salutation] + '<h1/>').html_safe)
	else
		render html: '<h1>Hello<h1/?'.html_safe
		end
	end
end
