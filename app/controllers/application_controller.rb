class ApplicationController < ActionController::Base
	def after_sign_in_path_for(resource)
		if resource.class == PartnerUser
			return partner_admin_dashboard_path
		elsif resource.class == AdminUser
			return admin_dashboard_path
		end
	end
end
