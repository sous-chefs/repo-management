#!/usr/bin/env ruby
require 'yaml'
require 'json'

dokken_instances = JSON.load(ARGF.read)

circle_config = {
  "lint_and_unit" => [
    "delivery",
    "danger",
    "lint-yaml",
    "lint-markdown",
  ],
  "version" => 2.1,
  "orbs" => {
    "kitchen" => "sous-chefs/kitchen@2"
  },
  "workflows" => {
    "kitchen" => {
      "jobs" => [
        {
          "kitchen/yamllint" => {
            "name" => "lint-yaml"
          }
        },
        {
          "kitchen/mdlint" => {
            "name" => "lint-markdown"
          }
        },
        {
          "kitchen/danger" => {
            "name" => "danger",
            "context" => "Danger"
          }
        },
        {
          "kitchen/delivery" => {
            "name" => "delivery"
          }
        }
      ]
    }
  }
}

# Handle docker instances
instances = [] 
dokken_instances.each do |i|
  instance_name = i['instance']
  circle_config['workflows']['kitchen']['jobs'].append({'kitchen/dokken-single' => {
    'name' => instance_name,
    'suite' => instance_name,
    "requires" => "*lint_and_unit"
  }})
end
yaml_config = circle_config.to_yaml
# The & is not part of the standard, so we have to hack it in
yaml_config.sub!('lint_and_unit:', 'lint_and_unit: &lint_and_unit')
yaml_config.gsub!('"*lint_and_unit"', '*lint_and_unit')
puts(yaml_config)
