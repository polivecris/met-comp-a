# script para criar logo em f90

# contar número de linhas do arq de entrada
n=$(wc -l $1 | awk '{print $1}')
#echo “número de linhas do arquivo é” $n 

rm -f p1 p2
for i in `seq $n`
do
echo "print* ,\"" >> p1
done

for i in `seq $n`
do echo \" >> p2
done

paste p1 $1 p2 > $1\.f90
echo "end" >> $1\.f90
