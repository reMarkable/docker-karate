# remarkableas/karate

Just a small Docker image containing [karate](https://github.com/intuit/karate).
Can be used to run headless tests:

```bash
docker run -v "$PWD/path/to/tests:/tests" remarkableas/karate
```

If you only want to run specific tests, that should be possible too:

```bash
docker run -v "$PWD/tests:/tests" remarkableas/karate onlythis
```
