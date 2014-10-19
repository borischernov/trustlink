require 'trustlink/tl_client'

module Trustlink
  class Trustlink
    cattr_accessor :config
    
    def self.new_client(request, extra_options = {})
      self.config ||= begin
        cfg = File.join(Rails.root, 'config', 'trustlink.yml')
        File.exists?(cfg) ? YAML.load(File.read(cfg)) : nil
      end
      return nil unless self.config && self.config[Rails.env]
      
      opts = config[Rails.env]['options'] || {}
      opts.merge!(extra_options)
      opts[:app_folder] ||= Rails.root
      opts[:template_path] ||= File.absolute_path(File.join(File.dirname(__FILE__),'..','template','template.tpl.html'))
      TlClient.new(config[Rails.env]['user_id'], request, opts)
    end
    
  end
end