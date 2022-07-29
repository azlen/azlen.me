touch ./pleasepush

until [ -f ./pushlog ]
do
     sleep 0.5
done
cat ./pushlog
rm pushlog
exit
