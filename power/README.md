### Description 

This folder is used to build necessary binaries for Power processors.

### How to use

```
bundle install

./bin/build-all manifest.yml  # binaries go to ./power/target fodler


cp secret.yml{.example,}
vi secret.yml  # fill in your values
bundle exec ./bin/upload-all manifest.yml secret.yml
```
