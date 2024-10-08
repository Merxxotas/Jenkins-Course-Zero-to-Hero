# from an Ubuntu 24.04 LTS image
FROM ubuntu:24.04

# Commands to run
RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y curl zip unzip gnupg python3-full openssh-server iputils-ping mysql-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Commands to Install AWS via command line
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip -o awscliv2.zip && \
    ./aws/install --update && \
    aws --version && \
    rm -v awscliv2.zip

# Create the /run/sshd directory
RUN mkdir -p /run/sshd

# Create a user, assign a password to that user
# And create a home folder for itself. (and the .ssh file)
# And give permissions to .ssh file (700)
RUN if ! id -u remote_user > /dev/null 2>&1; then \
        useradd -m -d /home/remote_user remote_user && \
        echo "remote_user:030414" | chpasswd && \
        mkdir -p /home/remote_user/.ssh && \
        chmod 700 /home/remote_user/.ssh; \
    fi

# Copy command to copy the ssh key previously generated
COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

# Give permissions to the folder '.ssh'
RUN chown remote_user:remote_user -R /home/remote_user/.ssh && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

# Path to openssh-server
RUN ssh-keygen -A

# Expose SSH port
EXPOSE 22

# Which command are going to run in order in this Dockerfile
CMD ["/usr/sbin/sshd", "-D"]

