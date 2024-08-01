# Jenkins Course: From Zero to Hero

## Commands Used for setting up a Jenkins server

> [!IMPORTANT]
> Be careful with the version, if there are a new version available (on any remote repository of your preference), use that one instead the version used on the .yaml

## Previous steps before set up a Jenkins Server on Docker

### Create Volume
> [!NOTE]
> To create the volumes (are external volume)

```bash
docker volume create jenkins-data
```
### Create Network

> [!NOTE]
> To create the network (are external network, that can comunicate with "external" world **[INTERNET]**)

```bash
docker network create trainingNetwork
```

To "up" this configurations, use:
```bash
docker compose up -d
```

> [!IMPORTANT]
> Once the server is up, you can go to a web browser and check if the Jenkins server is up, normally are:

`http://localhost:**YOUR_CONFIGURED_PORT**`

If everything is 🆗👌🆗, Jenkins will show something like this:

![jenkinsInitialAdminPassword](https://github.com/user-attachments/assets/31162bd4-fd23-4ce2-8a60-13d0d43be8d3)
