git add .
git commit -m "update"
git push origin src
rbenv local 2.7.0
./bin/deploy
