module Ecm
  module OpeningTimes
    module Backend
      class EntriesController < Itsf::Backend::Resource::BaseController
        def self.resource_class
          Ecm::OpeningTimes::Entry
        end

        private

        def permitted_params
          params.require(:entry).permit(:branch_id, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :open_all_day, :open_at, :close_at)
        end
      end
    end
  end
end
