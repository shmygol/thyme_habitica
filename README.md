# thyme_habitica

Is a plugin for [thyme pomodoro timer](https://github.com/hughbien/thyme), which scores tasks every time a pomodoro is successfully completed.

## Installation

    $ gem install thyme_habitica

## Usage

Require thyme_habitica in `~/.thymerc` and initialize plugins.

    # ~/.thymerc
    require 'thyme_habitica'
    use ThymePluginHabitica
    use ThymePluginHabitica, api_user: '11111111-1111-1111-1111-111111111111', api_key: '11111111-1111-1111-1111-111111111111', task_ids: ['11111111-1111-1111-1111-111111111111', '11111111-1111-1111-1111-111111111111']
