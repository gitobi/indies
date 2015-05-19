#!/bin/bash
bin/rake db:migrate:reset
bundle exec rake db:seed_fu

