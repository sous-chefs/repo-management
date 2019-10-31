#!/usr/bin/env ruby
require 'yaml'
require 'json'

dokken_instances = JSON.load(ARGF.read)

circle_config = {
  'jobs' => {
    'final' => {
      'docker' => [
        'image' => 'bash:latest',
      ],
      'steps' => [
        'run' => {
          'name' => 'Finish cooking',
          'command' => 'echo "Finished cooking"',
        },
      ],
    },
  },
  'lint_and_unit' => %w(
    delivery
    danger
    lint-yaml
    lint-markdown
  ),
  'version' => 2.1,
  'orbs' => {
    'kitchen' => 'sous-chefs/kitchen@2',
  },
  'workflows' => {
    'kitchen' => {
      'jobs' => [
        {
          'kitchen/yamllint' => {
            'name' => 'lint-yaml',
          },
        },
        {
          'kitchen/mdlint' => {
            'name' => 'lint-markdown',
          },
        },
        {
          'kitchen/danger' => {
            'name' => 'danger',
            'context' => 'Danger',
          },
        },
        {
          'kitchen/delivery' => {
            'name' => 'delivery',
          },
        },
      ],
    },
  },
}

final = { 'requires' => [] }

# Handle docker instances
dokken_instances.each do |i|
  instance_name = i['instance']
  circle_config['workflows']['kitchen']['jobs'].append('kitchen/dokken-single' => {
    'name' => instance_name,
    'suite' => instance_name,
    'requires' => '*lint_and_unit',
  })

  # Add instance names to final requires to force all jobs to pass
  final['requires'].append(i['instance'])
end

# add final workflow
circle_config['workflows']['kitchen']['jobs'].append('final' => final)

yaml_config = circle_config.to_yaml

# The & is not part of the standard, so we have to hack it in
# A bunch of yaml hacking as the to_yaml isn't perfect
yaml_config.sub!('lint_and_unit:', 'lint_and_unit: &lint_and_unit')
yaml_config.gsub!('"*lint_and_unit"', '*lint_and_unit')
yaml_config.gsub!('- ', '  - ')
yaml_config.gsub!('          - ', '            - ') # for final requires...
yaml_config.gsub!('suite:', '  suite:')
yaml_config.gsub!('name:', '  name:')
yaml_config.gsub!('requires:', '  requires:')
yaml_config.gsub!('context:', '  context:')
yaml_config.gsub!('command:', '  command:')
puts(yaml_config)
