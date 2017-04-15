module CurrentUserConcern
    extend ActiveSupport::Concern

    def current_user
        super || guest_user
    end
    
    def guest_user
        OpenStruct.new(name: "Visitor",
        first_name: "Visitor",
        last_name: "Visitor",
        email: "guest@example.com"
        )
    end
end