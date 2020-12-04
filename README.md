# Setup

1. `docker-compose build`
2. `docker-compose up` (this command won't exit -- start a new shell to run the next commands in)
3. `docker-compose run web rake db:create`

To get a shell inside the container (ex: to run rails commands):

1. `docker exec -it rails-demo-app_web_1 /bin/bash`
