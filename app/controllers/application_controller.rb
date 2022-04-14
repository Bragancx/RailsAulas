class ApplicationController < ActionController::Base
    before_action :authenticate_manager!
    layout :set_layout
    
    def bruno
        return 'Brunooo'
    end

    def set_layout
        devise_controller? ? "manager_devise" : "manager"
    end
end
