module Admin
  class ProjectService
    include Godmin::Resources::ResourceService

    attrs_for_index :name, :description, :active
    attrs_for_show :name, :description, :active, :pages
    attrs_for_form :name, :description, :active

    has_many :pages
  end
end
