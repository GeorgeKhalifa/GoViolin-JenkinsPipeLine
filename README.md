# Notes
Files Added : Dockerfile - Jenkinsfile - kub_deploy.yaml
* Docker Hub Link: https://hub.docker.com/repository/docker/george1998x/instabug-goviolin
* Credentials for GitHub and DockerHub are added to jenkins credentials secrets
* Tested Locally with Docker following command  : docker run --publish 8090:8080 docker-gs-ping #8090 is used as jenkins run on 8080
* Tested Locally with jenkins on port 8080
* Email Notification feature has a problem with my gmail account due to 2 step verification security step
* Made Some Trials concerning kub_deploy.yaml but 



# GoViolin

GoViolin is a web app written in Go that helps with violin practice.

Currently hosted on Heroku at https://go-violin.herokuapp.com/

GoViolin allows practice over both 1 and 2 octaves.

Contains:
* Major Scales
* Harmonic and Melodic Minor scales
* Arpeggios
* A set of two part scale duet melodies by Franz Wohlfahrt
