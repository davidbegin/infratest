Trying to isolate issues with https://github.com/newcontext-oss/kitchen-terraform

Notes from my Gemfile
```
# Last working commit
#
gem 'kitchen-terraform', :git => "https://github.com/newcontext-oss/kitchen-terraform.git",
	:ref => "3ca237737138ac9270e7815a2dc345fb74aa944e"

# First broken commit with error:
# 	>>>>>> Class: Kitchen::ClientError
# 	>>>>>> Message: Could not load the 'terraform' driver from the load path.
# 				 Please ensure that your driver is installed as a gem or included in your Gemfile if using Bundler.
#
# gem 'kitchen-terraform', :git => "https://github.com/newcontext-oss/kitchen-terraform.git",
#   :ref => "6e0addfb137e905ba1a15a11ee4dc184962ae39b"

# Last Commit with error:
# 	>>>>>> Class: Kitchen::ClientError
# 	>>>>>> Message: Could not load the 'terraform' driver from the load path.
# 				 Please ensure that your driver is installed as a gem or included in your Gemfile if using Bundler.
#
# gem 'kitchen-terraform', :git => "https://github.com/newcontext-oss/kitchen-terraform.git",
#   :ref => "97697828680093ce697ca12e4e32d255dea6515a"

# First commit that doesn't load in variable_files and fails with the following error:
# 	* Required variable not set: ami
# 	* Required variable not set: instance_type
# 	* Required variable not set: key_name
# 	* Required variable not set: region
#
# gem 'kitchen-terraform', :git => "https://github.com/newcontext-oss/kitchen-terraform.git",
#   :ref => "2c6f56fc5fae27389131cc2a2760031436267fde"

# Still failing to load in variable_files and fails with the following error:
# 	* Required variable not set: ami
# 	* Required variable not set: instance_type
# 	* Required variable not set: key_name
# 	* Required variable not set: region
#
# gem 'kitchen-terraform', :git => "https://github.com/newcontext-oss/kitchen-terraform.git"
```
