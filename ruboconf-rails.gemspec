# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = 'ruboconf-rails'
  spec.version = '1.5.0'
  spec.authors = ['Richard Böhme']
  spec.email = ['richard.boehme1999@gmail.com']

  spec.summary = 'Opinionated RuboCop Rails configuration for personal projects.'
  spec.homepage = 'https://github.com/richardboehme/ruboconf-rails'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.7.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/richardboehme/ruboconf-rails'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci|rubocop)|appveyor)})
    end
  end

  spec.add_dependency 'ruboconf', '~> 1.5.0'
  spec.add_dependency 'rubocop-rails', '~> 2.15.0'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
