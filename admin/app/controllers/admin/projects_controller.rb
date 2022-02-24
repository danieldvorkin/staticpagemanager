require_dependency "admin/application_controller"

module Admin
  class ProjectsController < ApplicationController
    include Godmin::Resources::ResourceController
  end
end
