module CovidPhotosHelper
  include Pagy::Frontend
  def other_display(topic_ids)
    return 'style=display:none;' unless topic_ids.include? Topic.last.id
  end
end
