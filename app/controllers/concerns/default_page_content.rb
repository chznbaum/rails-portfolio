module DefaultPageContent
    extend ActiveSupport::Concern

    included do
        before_action :set_page_defaults
    end

    def set_page_defaults
        @page_title = "Personal Website of Chazona Baum"
        @seo_keywords = "Chazona Baum portfolio"
        @all_topics = Topic.order(title: :asc)
    end
end