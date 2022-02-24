module Admin
  class PageService
    include Godmin::Resources::ResourceService

    attrs_for_index :name, :route, :active
    attrs_for_show :name, :route, :html, :active, :project
    attrs_for_form :name, :route, :html, :active, :project

    filter :name
    filter :active, as: :multiselect, collection: -> { [["Enabled", true], ["Disabled", false]] }

    def filter_name(resources, value)
      resources.where("name LIKE ? OR route LIKE ?", "%#{value}%", "%#{value}%")
    end
    
    def filter_active(resources, value)
      resources.where(active: value)
    end
  end
end
