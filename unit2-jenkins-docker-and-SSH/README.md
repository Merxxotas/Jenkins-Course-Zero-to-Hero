# Jenkins Course: From Zero to Hero

## Unit2: Jenkins, Docker and SSH 🚀

> [!WARNING]
> Remember the value of use **SSH** keys _WISELY_!! This can cause a security breach with your or yours servers.

## Topics of this unit

### SSH on another container (to connect Jenkins container with this new container via ssh)
> [!NOTE]
> As the second unit, I learned how useful can be the use of SSH on different Docker containers. This can help us to communicate the main "Server" with another servers thjat are configurated in the same Network.

On this unit, We used the following topics:

   - `ssh-keygen` command to create a ssh file.
   - SSH-files: The use of ssh files to work with remote servers more easily.
   - `ssh` command to connect to our servers via SSH.

Before use SSH, maybe you have to install openssh-server on your system (this depends on the distro that you are using):

```bash
apt-get install openssh-server
```

And for create your SSH key:

```bash
ssh-keygen -f --filename-key
```

> [!TIP]
> For more information of use SSH. you can read the following articles:

- [What is SSH? SSH Meaning in Linux](https://www.freecodecamp.org/news/ssh-meaning-in-linux/#:~:text=Secure%20Shell%20(SSH)%20is%20a,remote%20administration%20and%20file%20transfer.)

- [How to use SSH to connect to a remote server in Linux | ssh Command](https://www.geeksforgeeks.org/ssh-command-in-linux-with-examples/)

If everything is 🆗👌🆗, you can read the manual of ssh by the command:

```bash
man ssh
```

### Create a Dockerfile
For a communication with our SSH server, we created a Dockerfile, this Dockerfile containes important topics like:

- OS image to use (in this case, Ubuntu)
- Installation of importante packages to it's correct use.
- Creation of user and password for the new server
- SSH key to make connection VIA SSH

> [!IMPORTANT]
> Remember to use a specific version of docker image, **_NOT USE LATEST VERSION!!_**

After the creation of the Dockerfile, you should integrate in your [docker-compose.yml](https://github.com/Merxxotas/Jenkins-Course-Zero-to-Hero/blob/main/jenkinsOnDocker/docker-compose.yaml)

Finally, you can build this new features using the following commands:

`cd --where-are-located-your-docker-compose.yml-file`

```bash
docker compose build
```

```bash
docker compose up -d
```

### Connecting via SSH between servers

Once you have build and up correctly the servers, you can connect via SSH, using the `Jenkins server` to connect to `remote_host server`:

```bash
docker exec -it --Docker-container-name-or-ID bash
```

once you are inside of the Jenkins server, use:

```bash
ssh remote_user@remote_host
```

Alternatively, you can copy the SSH key to try to access with that key and not use the password:

on your host machine, use: 

```bash
docker cp --ssh-key-filename --jenkinsDockerContainerName:/tmp/remote-key
```

Then, access again to the Jenkins container: 

```bash
docker exec -it --Docker-container-name-or-ID bash
```

Finally use:

```bash
ssh -i --path-to-remote-key remote_user@remote_host
```

### Executing jobs on the SSH server vía Jenkins

Finally to close this unit, you can create and execute jobs in Jenkins that use your SSH server.

For do this, you need to install SSH plugin on your Jenkins (search for SSH plugin, in the plugin manager of Jenkins):

[Managing Plugins](https://www.jenkins.io/doc/book/managing/plugins/)

> [!IMPORTANT]
> Remeber import your SSH credential to your Jenkins server:

[Using credentials in Jenkins](https://www.jenkins.io/doc/book/using/using-credentials/)

Once you installed correctly the SSH plugin, and imported your SSH credential, create a job (can be a freestyle project) and in the build step select: `Execute shell script on remote host using ssh`:

Script used to test the SSH feature:

```bash
NAME=Brayan
LASTNAME="Marin Guirales"
echo $NAME > /tmp/remote-file0.log
echo "Hello, $NAME $LASTNAME. Current time and date is: $(date)" > /tmp/remote-file1.log
```
Finally, if everything is 🆗👌🆗, you can check the output of the job, or even better, enter to the SSH server and check the .log files that was generated by the script:

Access to the Jenkins server:

```bash
docker exec -it --Docker-container-name-or-ID bash
```

Connect to SSH server:

```bash
ssh remote_user@remote_host
```

print the values of the script:
```bash
cat /tmp/remote-file0.log /tmp/remote-file1.log
```

![unit2_0](https://github.com/user-attachments/assets/4c904e58-ab59-4560-ade1-16bfc3ee5cad)

# KEEP LEARNING! 🚀🚀
