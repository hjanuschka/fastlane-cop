require "fastlane/cop/version"

require 'pathname'
require 'yaml'
require 'rubocop'
require 'fastlane/cop/base'
require 'fastlane/cop/inject'


RuboCop::Fastlane::Inject.defaults!

require 'fastlane/cop/cops/end_newline'