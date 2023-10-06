### Music Server with k8s


## Instructions

Build the image:

```bash
docker build -t music .
```

Create deployment:

```bash
kubectl apply -f music-deployment.yaml
```

Now, using some music player client, add songs to playlist and play it. Use 
`localhost` for server address and `7777` for port.

Once song is added and played, you can listen it using your web browser at 
`http://localhost:8090`.

If you want to deploy it with `helm`, there is a package.

```bash
helm install quran music-0.1.0.tgz
```
