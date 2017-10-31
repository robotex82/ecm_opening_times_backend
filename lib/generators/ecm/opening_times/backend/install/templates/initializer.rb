Ecm::OpeningTimes::Backend.configure do |config|  
  # Set the resources, that will be shown in the backend menu.
  # 
  # Default: config.registered_controllers = -> {[
  #            Ecm::OpeningTimes::Backend::BranchesController,
  #            Ecm::OpeningTimes::Backend::EntriesController
  #          ]}
  # 
  config.registered_controllers = -> {[
    Ecm::OpeningTimes::Backend::BranchesController,
    Ecm::OpeningTimes::Backend::EntriesController
  ]}

  # Set the services, that will be shown in the backend menu.
  # 
  # Default: config.registered_services = -> {[
  #          ]}
  # 
  config.registered_services = -> {[
  ]}
end