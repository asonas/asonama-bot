## usage

```
docker run --name asonama-bot -e GOOGLE_CSE_ID=<SECRET> -e GOOGLE_CSE_KEY=<SECRET> -e SLACK_TOKEN=<SECRET> -e REDIS_URL=redis://redis:6379/ --cpu-shares=128 --link redis --restart=always -d -it asonas/asonama-bot
```
