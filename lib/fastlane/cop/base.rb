module RuboCop
  module Fastlane
    # Because RuboCop doesn't yet support plugins, we have to monkey patch in a
    # bit of our configuration.
    PROJECT_ROOT   = Pathname.new(__dir__).parent.parent.parent.expand_path.freeze
    CONFIG_DEFAULT = PROJECT_ROOT.join('config', 'default.yml').freeze
    CONFIG         = YAML.safe_load(CONFIG_DEFAULT.read).freeze

    private_constant(:CONFIG_DEFAULT, :PROJECT_ROOT)
  end
end