# 1.1

```
ssh -Y main02.local

main02% cd ~/proj/mikan/docker
main02% ./build.sh
main02% ./run.sh

container# cd $HOME/workspace
container# wget https://github.com/uchan-nos/mikanos-build/blob/master/day01/bin/hello.efi?raw=true -O hello.efi
container# $HOME/osbook/devenv/run_qemu.sh hello.efi
```
