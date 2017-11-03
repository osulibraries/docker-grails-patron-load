Grails Patron-Load Docker Image
==============================

A simple Docker image to run the Patron-load grails application.

See the [Hub page][1] for the available images and the [Github repo][2] to
review the Dockerfiles.

Usage
-----

Pull and run the docker image:

    $ docker pull osul/docker-grails-patron-load
    $ docker run -p 8080:8080 osul/docker-grails-patron-load

Patron-load will now be available at [http://localhost:8080/](http://localhost:8080/)

Notes
-----

  * The Tomcat 7 manager username and password are "fedora"
  * Fedora data is stored in a Docker volume at `/mnt/fcrepo4-data`
  * `/mnt/ingest` is also mounted as a Docker volume.


[1]: https://hub.docker.com/r/osul/docker-grails-patron-load
[2]: https://github.com/osulibraries/docker-grails-patron-load