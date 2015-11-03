# MkDocs

This is a simple Docker container for running the [MkDocs](http://www.mkdocs.org) documentation site builder tool

### Usage

#### Build image

```
$ docker build -t andrglo/mkdocs .
```

#### Then

See all available commands

```
$ docker run --rm andrglo/mkdocs help
```

Check version

```
$ docker run --rm andrglo/mkdocs version
```

Create a new project

```
$ docker run --rm -v ~/my/workspace:/workspace andrglo/mkdocs new my-project
```

Webserver for development

```
$ docker run -d -p 8000:8000 -v ~/my/workspace/my-project:/workspace andrglo/mkdocs
```

Build

```
$ docker run --rm -v ~/my/workspace/my-project:/workspace andrglo/mkdocs build
```

Deploy

Upload the directory `~/my/workspace/my-project/site` to your _http server_

