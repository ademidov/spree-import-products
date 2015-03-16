require 'spree_core'
require 'delayed_job'

module ImportProducts
  class Engine < Rails::Engine
    engine_name 'import_products'
    
    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end

      Spree::UserMailer.send(:include, ImportProducts::UserMailerExt)

    end

    config.to_prepare &method(:activate).to_proc
  end
end
