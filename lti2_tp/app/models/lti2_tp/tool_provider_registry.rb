module Lti2Tp

  class ToolProviderRegistry

    attr_reader :security_contract_template, :tp_deployment_url, :relaxed_oauth_check, :result_template,
                :tool_provider_name, :registry

    def initialize
      registry_entries = Registry.all()
      @registry = {}
      registry_entries.each { |entry| @registry[entry.name] = entry.content unless entry.name == 'content' }

      if registry['wirelog_filename'].present?
        Rails.application.config.wire_log = WireLog.new "ToolProvider", File.expand_path(registry['wirelog_filename'])
      else
        Rails.application.config.wire_log = nil
        registry['wirelog_filename'] = '' # protext against substitutes
      end

      @tp_deployment_url = registry['tp_deployment_url']
      @relaxed_oauth_check = registry['relaxed_oauth_check']
      @result_template = registry['result_template']
      @tool_provider_name = registry['tool_provider_name']
    end

  end

end