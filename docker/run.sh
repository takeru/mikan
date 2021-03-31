SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
touch ./bash_history

docker run \
  -v $SCRIPT_DIR/../workspace:/home/mikan/workspace \
  -v $SCRIPT_DIR/bash_history:/home/mikan/.bash_history \
  --rm \
  --net host \
  -e DISPLAY=`echo $DISPLAY` \
  -v $HOME/.Xauthority:/home/mikan/.Xauthority \
  --privileged \
  --name mikan-dev \
  -it \
  mikan /bin/bash
