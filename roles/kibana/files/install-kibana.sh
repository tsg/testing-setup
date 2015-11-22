ARCHIVE=$1
DEST=$2
USER=$3

NAME=`basename $ARCHIVE .tar.gz`

mkdir /tmp/trash/
mv $DEST /tmp/trash/
cd /tmp
tar -xzf $ARCHIVE || exit 1
mv $NAME $DEST || exit 1
chown -R $USER.users $DEST || exit 1
