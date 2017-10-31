Rails.application.routes.draw do
  mount Ecm::OpeningTimes::Backend::Engine => "/opening-times-backend"
end
