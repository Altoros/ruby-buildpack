
```
bundle install
cp secret.yml{.example,}
vi secret.yml

./bin/build-all manifest.yml
bundle exec ./bin/upload-all manifest.yml secret.yml
```
