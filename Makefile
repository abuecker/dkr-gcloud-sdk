build:
	docker build -t gcloud-sdk .

tag:
	docker tag gcloud-sdk abuecker/gcloud-sdk:${VERSION}

push: tag
	docker push abuecker/gcloud-sdk:${VERSION}
