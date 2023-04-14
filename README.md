## Setup gcloud cli
- Install Google Cloud SDK on your local machine. Follow the instructions here: https://cloud.google.com/sdk/docs/install

## Docker

- To build docker image: `docker build -q .`
- To run docker image: `docker run -it <image_id>`
- To build and run docker image: `docker run -it --rm $(docker build -q .)`

## GCP Cloud Run

- To build and push image to GCP Container Registry: `gcloud builds submit --tag gcr.io/<project_id>/<image_name>`
- To deploy application run `gcloud run deploy`
