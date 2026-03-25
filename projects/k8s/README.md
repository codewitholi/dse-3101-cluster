# k8s_compute

We need to build the image locally, and copy it into Kubernetes image registry with kind

```bash
cd webapp/
docker build -t webapp .

# Load image into kind cluster
kind load docker-image webapp --name kind
```