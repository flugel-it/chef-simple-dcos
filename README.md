# chef-simple-dcos

Simple cookbook to test DCOS. It was created for a DCOS POC.

It's a wrapper to the community cookbook.

## Supported Platforms

* CentOS 7

## Usage

Include `chef-simple-dcos::master`, `chef-simple-dcos::slave` or `chef-simple-dcos::slave_public` in your
node's `run_list`. 

You need at one one instance of each role running to test DCOS properly. Use 16 GB like DCOS documentation recommends.

## License and Authors

Author:: Diego Woitasen <diego@flugel.it>

Check LICENSE file.

