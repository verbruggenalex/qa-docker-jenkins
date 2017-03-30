FROM jenkins

# Become root to install via apt.
USER root

# Install php.
RUN apt-get update
RUN apt-get install install php5-cli php5-dev php5-curl curl php-pear ant

# Drop back to jenkins
USER jenkins

# Install plugins.
#COPY plugins.txt /usr/share/jenkins/plugins.txt
#RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
