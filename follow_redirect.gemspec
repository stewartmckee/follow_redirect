# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "follow_redirect/version"

Gem::Specification.new do |s|
  s.name        = "follow_redirect"
  s.version     = FollowRedirect::VERSION
  s.authors     = ["Stewart McKee"]
  s.email       = ["stewart@theizone.co.uk"]
  s.homepage    = "http://github.com/stewartmckee/follow_redirect"
  s.summary     = %q{This gem allows you to find a url's evenutal target.  Its intended use is to remove shortened urls in social media}
  s.description = %q{This gem allows you to find a url's evenutal target.  Its intended use is to remove shortened urls in social media}

  s.rubyforge_project = "follow_redirect"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
