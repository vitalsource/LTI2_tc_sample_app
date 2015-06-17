
include Lti2Commons
include WireLogSupport

css_text = <<CSS
.ToolConsumer {
}
.ToolProvider {
	margin-left: 30%;
}
.ToolConsumerResponse {
	margin-left: 30%;
}
.ToolProviderResponse {
}
CSS

NONCE_TIME_TO_LIVE = 300  # seconds
Rails.application.config.nonce_cache = Cache.new :ttl => NONCE_TIME_TO_LIVE

if ActiveRecord::Base.connection.table_exists? 'lti2_tc_registries'
  Rails.application.config.tool_consumer_registry = Lti2Tc::ToolConsumerRegistry.new
end

wirelog_filename = Rails.application.config.tool_consumer_registry.registry['wirelog_filename']
if wirelog_filename.present?
  full_filename = File.expand_path(wirelog_filename)
  dirname = File.dirname(full_filename)
  css_filename = File.join(dirname, 'wirelog.css')
  unless File.exists?(css_filename)
    File.open(css_filename, "w") { |file| file.write css_text }
  end
  Rails.application.config.wire_log = WireLog.new "ToolConsumer", full_filename
else
  Rails.application.config.wire_log = nil
end
