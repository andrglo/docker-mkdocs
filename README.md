# MkDocs

This is a simple Docker container for running the [MkDocks](http://www.mkdocs.org) documentation site builder tool

### Inspired by and based on

The work of Sammeer Naik in [gitlab](https://github.com/sameersbn/docker-gitlab) and others docker containers

### Usage

To create a new project named *my-project* located in */my/docs/path/my-project*:
```bash
$ docker run --rm -v /my/docs/path:/workspace andrglo/docker-mkdocs new my-project

```

To run a local server:
```bash
$ docker run -d -p 8000:8000 -v /my/docs/path:/workspace andrglo/docker-mkdocs server my-project
```

If you are using Docker in Windows or Mac forward your boot2docker port to your computer port:
```bash
$ VBoxManage controlvm boot2docker-vm natpf1 mkdocs,tcp,,8000,,8000
```

To build a static site in */my/docs/path/my-project/site*:
```bash
$ docker run --rm -v /my/docs/path:/workspace andrglo/docker-mkdocs build my-project
```

To get help:
```bash
$ docker run --rm andrglo/docker-mkdocs help
```

To verify mkdocs version used:
```bash
$ docker run --rm andrglo/docker-mkdocs version
```

### References

* https://github.com/phusion/baseimage-docker
* https://github.com/sameersbn/docker-gitlab
