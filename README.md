# Postgis and pgtap docker images

This image just adds [pgtap](https://pgtap.org/) to the official [postgis docker image](https://github.com/postgis/docker-postgis).

It is intended to be used in a CI/CD environment, for example in a gitlab-ci services.

It should be used exactly the same way as `postgis/postgis` so please refer to its documentation.

Versioning follow this scheme: `<postgresql version>-<postgis version>-<version of pgtap>`. The installed pgtap comes from pgdg.

NOTE: if you use this docker image to also execute tests and want `pg_prove` you should install the `libtap-parser-sourcehandler-pgtap-perl` package in a `before_script`.

TODO: supports all the available postgis docker versions (at the moment only supports version 13).

