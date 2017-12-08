git pull origin master
cd ./superset/assets
yarn
yarn build
cd ../..
sudo pip install flask_cors --force-reinstall
sudo superset db upgrade
sudo superset init
outdir=/var/log/superset/
echo $outdir
sudo mkdir -p $outdir
sudo superset runserver --port 8001 > $outdir/out.log 2> $outdir/error.log & echo $! > $outdir/pid

