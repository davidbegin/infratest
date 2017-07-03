from subprocess import call
call("clear")
import json
import unittest

class TestEC2Instances(unittest.TestCase):

    def setUp(self):
	tfstate_file = open("saved_terraform_state_for_testing.tfstate")
	raw_tfstate  = tfstate_file.read()
        tfstate_file.close()
	self.tfstate      = json.loads(raw_tfstate)

    def test_all_ec2_instances_have_at_least_one_tag(self):
	modules = self.tfstate["modules"].pop()
	resources = modules["resources"]

	for resource in resources:
	    if "aws_instance" in resource: 
		tags = resources[resource]["primary"]["attributes"]["tags.Name"]
		error_message = "Tags for '%s':\n\t %r" % (resource, tags)

		tag_count = int(resources[resource]["primary"]["attributes"]["tags.%"])

		self.assertGreater(tag_count, 0, error_message)


if __name__ == '__main__':
    unittest.main()
