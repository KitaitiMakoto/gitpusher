require 'yaml'
module GitPusher
  class Config
    def self.load(options)
      context = GitPusher::Context.instance
      context.config = YAML.load_file(File.join(options[:config]))
      context.threads = options[:threads]
    end
  end
end

