
include Lti2Commons
include WireLogSupport

style_heading = <<STYLE
<head>
<style>
.ToolConsumer {
}
.ToolProvider {
	margin-left: 25%;
}
.ToolProviderResponse {
}
.ToolConsumerResponse {
	margin-left: 25%;
}
</style>
</head>

STYLE

NONCE_TIME_TO_LIVE = 300  # seconds
Rails.application.config.nonce_cache = Cache.new :ttl => NONCE_TIME_TO_LIVE

if ActiveRecord::Base.connection.table_exists? 'lti2_tc_registries'
  Rails.application.config.tool_consumer_registry = Lti2Tc::ToolConsumerRegistry.new
end

full_filename = Rails.application.config.tool_consumer_registry.registry['wirelog_filename']
if full_filename.present?
  full_filename = File.expand_path(full_filename)
  f = File.open(full_filename, 'w')
  if f.size < style_heading.size
    f.truncate(0)
    f.write(style_heading)
    f.close
  end
  Rails.application.config.wire_log = WireLog.new "ToolConsumer", full_filename
else
  Rails.application.config.wire_log = nil
end

puts("Init tc_deployment_url: #{Rails.application.config.tool_consumer_registry.registry['tc_deployment_url']}")