module Ecm
  module OpeningTimes
    module Backend
      class BranchesController < Itsf::Backend::Resource::BaseController
        include ResourcesController::ActsAsListConcern

        helper Ecm::OpeningTimes::ApplicationHelper

        def self.resource_class
          Ecm::OpeningTimes::Branch
        end

        private

        def permitted_params
          params.require(:branch).permit(:name, :identifier)
        end
      end
    end
  end
end
