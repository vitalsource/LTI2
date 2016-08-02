require 'spec_helper'

RSpec.describe "Lti2Tc::ToolProxiesControllers", type: :request do
  describe "GET /lti2_lti2_tc_tool_proxies_controllers" do
    before :each do
      @routes = Lti2Tc::Engine.routes
    end
    it "works! (now write some real specs)" do
      get @routes.url_helpers.tool_proxies_index_path, params: {format: :json}
      expect(response).to have_http_status(204)
    end
  end
end
