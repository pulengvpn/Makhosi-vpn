FROM ubuntu:22.04

# Install OpenSSH server
RUN apt-get update && apt-get install -y openssh-server

# Create SSH directory and set root password (change 'yourpassword' later!)
RUN mkdir /var/run/sshd
RUN echo 'root:yourpassword' | chpasswd

# Allow root login via SSH (for testing - later you can create users)
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Expose SSH port
EXPOSE 22

# Start SSH server
CMD ["/usr/sbin/sshd", "-D"]
