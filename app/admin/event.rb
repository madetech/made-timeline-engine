if defined?(ActiveAdmin)
  ActiveAdmin.register Timeline::Event do
    actions :all, except: [:show]

    controller do
      cache_sweeper Timeline.config.cache_sweeper if Timeline.config.cache_sweeper
    end

    filter :year
    filter :title

    menu label: 'Events', parent: 'Timelines', priority: 20

    form do |f|
      f.inputs 'Event' do
        f.input :year

        f.input :title

        f.input :timeline

        f.input :description, wrapper_html: { class: 'default' },
          as: :rich,
          config: { width: '76%', height: '400px' }

        f.input :image, wrapper_html: { class: 'default' },
          as: :file,
          hint: f.template.image_tag(f.object.image.url(:thumb))
      end

      f.actions
    end

    index do
      column :title
      column :year
      column :updated_at

      default_actions
    end
  end
end
