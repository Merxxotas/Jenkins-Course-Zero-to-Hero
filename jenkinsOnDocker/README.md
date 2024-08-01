
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

![App Screeshot](https://drive.google.com/file/d/1qwCAYKaSbOHMgde3WJkWEwfFaJH0mD_D/view?usp=sharing)








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

To see the “Administrator password”, I know two ways

### Way #1

Enter to the **"SO"** with the interactive mode by docker.

```bash
docker exec -it --id-of-docker-container Bash
```

Navigate to the specific route, and print the password:

```bash
cat /var/jenkins_home/secrets initialAdminPassword
```

### Way #2

See the password explicitly through the docker logs:

docker logs --id-of-docker-container

![initialAdminPasswordDockerLogs](https://github.com/user-attachments/assets/4c2293fe-3b07-41bf-b3ec-b1726284b051)

Now you can proceed with the configurations of your Jenkins Server!
