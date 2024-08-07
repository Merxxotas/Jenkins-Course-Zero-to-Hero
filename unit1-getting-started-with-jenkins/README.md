# Jenkins Course: From Zero to Hero

## Unit1: Getting started with Jenkins 🚀

> [!IMPORTANT]
> Be careful with the version, if there are a new version available (on any remote repository of your preference), use that one instead the version used on the .yaml

## Topics of this unit

### Set variables and outputs in Jenkins
> [!NOTE]
> As the first unit, I learned the basics topics of Jenkins, creating the first job, an using variables and outputs. Here are the first script to build on Jenkins.

On this script written in bash, We used the following topics:

   - Variables: using variables to     store some values that we'll be used on the script. Variables like: `NAME`, `LASTNAME`.
   - `echo` and `date` functions to print some information according to the variables that we setted before.


The script can be tested locally:

> [!IMPORTANT]
> Give permissions to the script files to run the files correctly, you can use:

```bash
chmod u+x --filename
```

OR

```bash
chmod 755 --filename
```

You can read more information about file permissions:

- [Linux file permissions explained](https://www.redhat.com/sysadmin/linux-file-permissions-explained)

- [How to Set File Permissions in Linux?](https://www.geeksforgeeks.org/how-to-set-file-permissions-in-linux/)

Finally, you can run the script using: 
```bash
./script0.sh
```

If everything is 🆗👌🆗, Jenkins will show something like this:

![jenkinsInitialAdminPassword](unit1Script0.png)

### Set parameters on Jenkins
On the next script, In the following script, it was seen the concepts of parameters in jenkins, that can be used to test some parameters of the script. **This is used because in jenkins can't test the script like you can do it locally**:

- **Locally**

```bash
./script1.sh Brayan "Marin Guirales"
```

- **Jenkins**
![jenkinsInitialAdminPassword](unit1Script1_0.PNG)

If everything is 🆗👌🆗, Jenkins will show something like this:

![jenkinsInitialAdminPassword](unit1Script1_2.PNG)

### List parameters and boolean parameters

Finally, on this script. it was seen the concepts of list parameters (exclusive of Jenkins) and trhe boolean parameters. 

The list parameters is a field that you can set a list of values, and choose which value use in the build moment. In jenkins is called like *_Choice Parameter_*:

![jenkinsInitialAdminPassword](unit1Script2_0.PNG)

![jenkinsInitialAdminPassword](unit1Script2_1.PNG)

The boolean parameters can be tested locally setting the value of the boolean variable manually:

- **Locally**
```bash
./script2.sh Brayan "Marin Guirales" true
```

- **Jenkins**
In Jenkins, it's configured using the _Boolean Parameter_, that Boolean parameter can store a default value (Normally is true)

![jenkinsInitialAdminPassword](unit1Script2_2.PNG)

And can be tested on the build by checking or unchecking the box of the boolean parameter (checked - **true**, unchecked - **false**):

![jenkinsInitialAdminPassword](unit1Script2_3.PNG)

If everything is 🆗👌🆗, Jenkins will show something like this:

![jenkinsInitialAdminPassword](unit1Script2_4.PNG)

If else, Jenkins will show something like this, showing the "error", because the boolean parameter is set on _false_:


![jenkinsInitialAdminPassword](unit1Script2_5.PNG)


# KEEP LEARNING! 🚀🚀
