# Jenkins Course: From Zero to Hero

## Unit3: Jenkins and AWS (Amazon Web Services) 🚀

> [!WARNING]
> To use AWS services, you'll need a credit (or debit) card to create your new account; even if you only use the services that are included in the free tier (**Remember:** the free tier is for _12 months_ since you use the service!) so be careful with that if you don't wanna exceed the perks of the free tier, otherwise you'll have to pay the use of the services that you used.

## Topics of this unit

### MySQL + AWS + Shell Scripting + Jenkins Job
> [!NOTE]
> As the third unit, I learned how useful can be the use of SSH on different Docker containers. This can help us to communicate the main "Server" with another servers thjat are configurated in the same Network.

On this unit, We used the following topics:

   - MySQL-database: is a RDBMS of a SQL database, we'll use it to manage our database that we'll manage with AWS and Jenkins.
   - Shell Scripting: text file with a list of commands that instruct an operating system to perform certain tasks (remeber that we learned the basics of shell scripting on [Unit1](https://github.com/Merxxotas/Jenkins-Course-Zero-to-Hero/tree/main/unit1-getting-started-with-jenkins) and [Unit2](https://github.com/Merxxotas/Jenkins-Course-Zero-to-Hero/tree/main/unit2-jenkins-docker-and-SSH)).
   - AWS services: it's a broad set of global cloud-based products including compute, storage, databases, analytics, networking, mobile, developer tools, management tools, IoT, security, and enterprise applications: on-demand, available in seconds, with pay-as-you-go pricing. Some of the services that we used on this unit are **S3** **IAM**, and the use of the own **_AWS CLI_**.

One diagram that can fit the goal of this unit:

![unit3_0](https://github.com/user-attachments/assets/4c904e58-ab59-4560-ade1-16bfc3ee5cad)


### Installlation of AWS CLI and MySQL
**_AWS CLI_** can be installed on the OS that you want (Linux, MacOS, Windows), you can reach more information about the installation: [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

Once you already installed AWS CLI, you can check that is correctly installed using the follwing command:

```bash
aws --version
```

Extra information for set up your AWS CLI: [Set up AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-quickstart.html)

Moreover, to install **_MySQL_**, we need to create a MySQL server on our `docker-compose.yaml` [jenkinsOnDocker](https://github.com/Merxxotas/Jenkins-Course-Zero-to-Hero/blob/main/jenkinsOnDocker/docker-compose.yaml), and also install a MySQL server client on your OS you can reach more information about the installation: [MySQL Installation Guide - Official Site](https://dev.mysql.com/doc/mysql-installation-excerpt/8.0/en/); also can check this one (especially for user that use WSL): [Install MySQL on WSL2-Ubuntu](https://pen-y-fan.github.io/2021/08/08/How-to-install-MySQL-on-WSL-2-Ubuntu/)

Once you already installed MySQL server (client), you can check that is correctly installed using the follwing command:

```bash
mysql --version
```

to check that the default test databases are correctly installed, you can use:

```bash
sudo mysql
```

```bash
SHOW
DATABASES;
```

Moreover , to install our MySQL server on our `docker-compose.yaml` we'll need to make a new changes on the file (check the folder for the changes: [jenkinsOnDocker](https://github.com/Merxxotas/Jenkins-Course-Zero-to-Hero/tree/main/jenkinsOnDocker))

> [!WARNING]
> For security purposes, in the `docker-compose.yaml` we don't hardcode the `MYSQL_ROOT_PASSWORD` on the file, instead we use an `.env` to store the password, and we are ignoring that `.env` file with a `.gitignore` file; you can reach more information about `.env` and `.gitignore`:

- [What is the use of .env file in projects?](https://medium.com/@sujathamudadla1213/what-is-the-use-of-env-8d6b3eb94843#:~:text=Configuration%20Management%3A-,The%20.,them%20without%20modifying%20the%20code.)
- [Git ignore - Git Official documentation](https://git-scm.com/docs/gitignore/en#:~:text=The%20purpose%20of%20gitignore%20files,being%20reintroduced%20in%20later%20commits.)
- [Git ignore: what is it and how to repo](https://www.freecodecamp.org/news/gitignore-what-is-it-and-how-to-add-to-repo/)


Once you already set up the `docker-compose.yaml` file and did a `docker compose up -d`, you should see something like this:

![unit3_1](https://github.com/user-attachments/assets/4c904e58-ab59-4560-ade1-16bfc3ee5cad)

Where you can see that you now have three docker servers (the new one is the MySQL server on the `docker-compose.yaml` file.)

Now you can check some things such as the logs, or just enter to the docker itself:

```bash
docker logs --db-host-container-name-or-ID
```

```bash
docker exec -it --db-host-container-name-or-ID bash
```

Once you are in the docker container, you can try to login to the user `root` with the password that we setted in the `.env` file:

```bash
mysql -u root -p
```

If everything is 🆗👌🆗, you can check the default databases that MySQL install as default:

```bash
SHOW
DATABASES;
```

Finally, we need to install MySQL **Client** and **AWS_CLI** in our `remote host` docker (remember that we created in the [unit2](https://github.com/Merxxotas/Jenkins-Course-Zero-to-Hero/tree/main/unit2-jenkins-docker-and-SSH)), you can check the changes of our `Dockerfile` on the [unit2](https://github.com/Merxxotas/Jenkins-Course-Zero-to-Hero/tree/main/unit2-jenkins-docker-and-SSH).

Remeber that you'll need to rebuild the `Dockerfile`, you can rebuild it using:

```bash
cd /path/to/docker-compose.yaml/
```

```bash
docker compose build
```

Finally you need to update the services that are on the `docker-compose.yaml`:

```bash
docker compose up -d
```
> [!NOTE]
> For this unit, you can install AWS_CLI via PIP or via command line. Both versions are on the [unit2](https://github.com/Merxxotas/Jenkins-Course-Zero-to-Hero/tree/main/unit2-jenkins-docker-and-SSH). Remember read the comments of the `Dockerfile` to see the instructions of the both versions.

If everything is 🆗👌🆗, you can check if MySQL (client) and AWS_CLI are correctly installed on the `remote_host` docker (enter to the docker itself via `docker exec`):

![unit3_2](https://github.com/user-attachments/assets/4c904e58-ab59-4560-ade1-16bfc3ee5cad)

# KEEP LEARNING! 🚀🚀
