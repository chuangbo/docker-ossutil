## docker-ossutil

Alibaba cloud ossutil in docker, based on busybox.

### Usage

```
docker run -it --rm chuangbo/ossutil \
    --access-key-id ACCESS_KEY_ID \
    --access-key-secret ACCESS_KEY_SECRET \
    -e ENDPOINT \
    ls
```
