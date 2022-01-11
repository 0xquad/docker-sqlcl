SQLcl is an SQL\*plus alternative command line client provided by Oracle with many helpful features.

This Dockerfile provides a quick way to use the tool. To use it:

```
docker build -t sqlcl
docker run --rm -ti sqlcl scott/tiger@192.0.2.232/ORCL
```

More information about the tool: https://www.oracle.com/tools/downloads/sqlcl-downloads.html
