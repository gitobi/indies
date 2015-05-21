#!/bin/bash
git push production
heroku pg:reset DATABASE --app indies
heroku run rake db:seed_fu --app indies


