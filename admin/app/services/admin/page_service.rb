module Admin
  class PageService
    include Godmin::Resources::ResourceService

    attrs_for_index :name, :route, :active
    attrs_for_show :name, :route, :html, :active
    attrs_for_form :name, :route, :html, :active
  end
end
