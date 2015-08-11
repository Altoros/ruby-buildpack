
```
bundle install
cp secret.yml{.example,}
vi secret.yml

./bin/build-all manifest.yml
bundle exec ./bin/upload-all manifest.yml secret.yml
```

```
vi /home/ubuntu/.rvm/gems/ruby-2.2.2/bundler/gems/buildpack-packager-58ccd566aee3/lib/buildpack/packager/manifest_schema.yml
CF_STACK=trustyppc64le BUNDLE_GEMFILE=cf.Gemfile bundle exec buildpack-packager cached

```