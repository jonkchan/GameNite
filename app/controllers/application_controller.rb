class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	helpers do
		def logged_in?
			!!session[:user_id]
		end

		def current_user
			User.find_by(id: session[:user_id])
		end
		
		def redirect_if_not_logged_in
			if !logged_in?
				redirect '/login'
			end
		end
	end
end
