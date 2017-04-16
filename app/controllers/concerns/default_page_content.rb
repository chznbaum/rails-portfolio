module DefaultPageContent
    extend ActiveSupport::Concern

    included do
        before_filter :set_page_defaults
    end

    def set_page_defaults
        @page_title = "Personal Website of Chazona Baum"
        @seo_keywords = "Chazona Baum portfolio"
    end
end