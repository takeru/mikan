FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install git ansible python3-distutils -y
RUN apt-get install tmux lv tree nano -y

ENV HOME /home/mikan
WORKDIR $HOME
RUN git clone https://github.com/uchan-nos/mikanos-build.git osbook
RUN cd $HOME/osbook/devenv && ansible-playbook -K -i ansible_inventory ansible_provision.yml

RUN ln -s $HOME/workspace/mikanos/MikanLoaderPkg $HOME/edk2/

COPY ./files/ $HOME/files/
RUN cd $HOME/edk2 && \
      bash -c "source edksetup.sh" && \
      patch -u Conf/target.txt < $HOME/files/Conf_target.txt.patch

RUN apt-get install dosfstools sudo -y
RUN apt-get install x11-apps -y
