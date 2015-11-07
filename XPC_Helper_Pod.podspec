Pod::Spec.new do |s|
  s.name         = "XPC_Helper_Pod"
  s.version      = "1.0"
  s.license      = { :type => "BSD" }

	s.source       = {
			:git => "https://github.com/.../...git",
			:tag => s.version.to_s
	}

	s.module_name = "XPC_Helper_Pod"
	s.osx.deployment_target = "10.9"

	s.source_files        = [
		"Pod/src/*.{h,c,m}",
		"Pod/include/XPC_Helper_Pod/*.h"
	]

	s.public_header_files = "Pod/include/XPC_Helper_Pod/*.h"
	s.header_mappings_dir = "Pod/include"
  s.framework           = "Foundation"
end
