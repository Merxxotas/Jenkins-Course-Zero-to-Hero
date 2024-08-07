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
![unit1Script0](https://github.com/user-attachments/assets/f00d1848-1c90-4cd6-9f6e-f18c7471d515)

### Set parameters on Jenkins
On the next script, In the following script, it was seen the concepts of parameters in jenkins, that can be used to test some parameters of the script. **This is used because in jenkins can't test the script like you can do it locally**:

- **Locally**

```bash
./script1.sh Brayan "Marin Guirales"
```

- **Jenkins**
![unit1Script1_0](https://github.com/user-attachments/assets/bedf81cd-32e1-43c7-8b9a-778e5dfac500)


If everything is 🆗👌🆗, Jenkins will show something like this:

![unit1Script1_2](https://github.com/user-attachments/assets/574dfa9f-8bb9-41b3-9582-d7b9d04f43b5)


### List parameters and boolean parameters

Finally, on this script. it was seen the concepts of list parameters (exclusive of Jenkins) and trhe boolean parameters. 

The list parameters is a field that you can set a list of values, and choose which value use in the build moment. In jenkins is called like *_Choice Parameter_*:

![unit1Script2_0](https://github.com/user-attachments/assets/72a85e3b-7949-4886-8861-aba0ef733a1d)


![unit1Script2_1](https://github.com/user-attachments/assets/4ac99597-05ee-4690-ad6e-20f0492a2360)


The boolean parameters can be tested locally setting the value of the boolean variable manually:

- **Locally**
```bash
./script2.sh Brayan "Marin Guirales" true
```

- **Jenkins**
In Jenkins, it's configured using the _Boolean Parameter_, that Boolean parameter can store a default value (Normally is true)

![unit1Script2_2](https://github.com/user-attachments/assets/5f94bede-0685-464d-9c08-9c1c472f530b)

And can be tested on the build by checking or unchecking the box of the boolean parameter (checked - **true**, unchecked - **false**):

![unit1Script2_3](https://github.com/user-attachments/assets/042158ed-d83e-4303-9500-9fba151f993d)


If everything is 🆗👌🆗, Jenkins will show something like this:

![unit1Script2_4](https://github.com/user-attachments/assets/f4b399d1-42d6-4d38-82dd-1d7432be69a4)


If else, Jenkins will show something like this, showing the "error", because the boolean parameter is set on _false_:


![unit1Script2_5](https://github.com/user-attachments/assets/c645b537-2834-4889-a835-9ccd0c614fa3)



# KEEP LEARNING! 🚀🚀
