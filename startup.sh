cd ./superset/assets
yarn
yarn build
cd ../..
python setup.py install
superset db upgrade
superset init
outdir=/var/log/superset/
echo $outdir
sudo mkdir -p $outdir
source psyduckenv/bin/activate
sudo superset runserver --port 8001 > $outdir/out.log 2> $outdir/error.log & echo $! > $outdir/pid

