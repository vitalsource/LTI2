Lti2Tc::Engine.routes.draw do

  get 'tool_proxies/index'

  resources :tool_consumer_profiles

  resources :deployment_requests

  resources :tools

  get 'reregister_continue', :to => "tools#reregister_continue"

  get 'tool_settings/:tool_guid', :to => 'tool_settings#show'
  get 'tool_settings/:tool_guid/context/:node_id', :to => 'tool_settings#show'
  get 'tool_settings/:tool_guid/ltilink/:node_id', :to => 'tool_settings#show'

  put 'tool_settings/:tool_guid', :to => 'tool_settings#update'
  put 'tool_settings/:tool_guid/context/:node_id', :to => 'tool_settings#update'
  put 'tool_settings/:tool_guid/ltilink/:node_id', :to => 'tool_settings#update'
end
