require File.join(File.dirname(__FILE__), 'lib', 'net', 'ntlm')

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'rubyntlm'
  s.version = Net::NTLM::VERSION::STRING
  s.summary = 'Ruby/NTLM library.'
  s.description = 'Ruby/NTLM provides message creator and parser for the NTLM authentication.'

  s.authors = ['Kohei Kajimoto','Paul Morton']
  s.email = ['koheik@gmail.com','paul.e.morton@gmail.com']
  s.homepage = 'https://github.com/winrb/rubyntlm'


  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]
  
  s.add_development_dependency "rake"
end