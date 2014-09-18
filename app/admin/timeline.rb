if defined?(ActiveAdmin)
  ActiveAdmin.register Timeline::Timeline do
    actions :all, except: [:show]

    controller do
      cache_sweeper Timeline.config.cache_sweeper if Timeline.config.cache_sweeper
      defaults finder: :find_by_url
    end

    filter :name

    menu label: 'Timeline', parent: 'Timelines', priority: 10

    form do |f|
      f.inputs 'Timeline' do
        f.input :name
      end

      f.actions
    end

    index do
      column :name
      column :updated_at

      default_actions
    end
  end
end
