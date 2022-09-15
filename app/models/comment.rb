class Comment < ActiveRecord::Base
    belongs_to :record

    def all_comments
    end
end