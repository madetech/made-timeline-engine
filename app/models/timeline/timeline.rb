module Timeline
  class Timeline < ActiveRecord::Base
    has_many :events

    attr_accessible :name, :url

    acts_as_url :name

    def to_param
      url
    end

    def to_s
      name
    end
  end
end
