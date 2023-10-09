Step 1: Publish to Exchange

```
mvn deploy \
--settings .maven/settings.xml \
-Dclient.id=<yourclientid> \
-Dclient.secret=<yourclientsecret>
```

Step 2: Deploy to CH 2.0

```
mvn deploy \
--settings .maven/settings.xml \
-DmuleDeploy \
-Dclient.id=<yourclientid> \
-Dclient.secret=<yourclientsecret>
```