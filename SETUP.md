## setup

1. create personal access token on github with `public_repo` permission
2. install travis gem `gem install travis`
3. encrypt access token with:

```
travis encrypt  GH_TOKEN=THEGENERATEDTOKEN -r nuprl/website
```

Pasting the result in the `.travis.yml` file inside the env section.
