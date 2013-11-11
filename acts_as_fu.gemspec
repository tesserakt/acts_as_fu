# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{acts_as_fu}
  s.version = "0.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pat Nakajima"]
  s.date = %q{2011-09-20}
  s.email = %q{patnakajima@gmail.com}
  s.files = ["lib/acts_as_fu", "lib/acts-as-fu.rb", "lib/acts_as_fu/base.rb", "lib/acts_as_fu.rb", "Rakefile", "Gemfile", "prerelease"]
  s.has_rdoc = true
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{Generate ActiveRecord models on the fly for your tests}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<activerecord>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 0"])
  end
  
  case RUBY_PLATFORM
  when 'java'
    s.add_runtime_dependency 'activerecord-jdbcsqlite3-adapter'
  else
    s.add_runtime_dependency 'sqlite3'
  end
  
end
