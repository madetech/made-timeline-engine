module Timeline
  class Event < ActiveRecord::Base
    belongs_to :timeline

    attr_accessible :year, :title, :description, :image, :timeline_id

    has_attached_file :image, styles: ::Timeline.config.image_styles

    default_scope order: '`year` ASC'

    def to_s
      title
    end
  end
end
