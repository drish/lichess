# frozen_string_literal: true

require_relative 'lib/lichess/version'

Gem::Specification.new do |spec|
  spec.name = 'lichess'
  spec.version = Lichess::VERSION
  spec.authors = ['Derich Pacheco']
  spec.email = ['carlosderich@gmail.com']

  spec.summary = 'Lichess.org API client for Ruby.'
  spec.description = 'A Ruby client for the Lichess.org API.'
  spec.homepage = 'https://github.com/drish/lichess'
  spec.required_ruby_version = '>= 2.6.0'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
