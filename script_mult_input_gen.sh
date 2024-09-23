#/bin/bash
for i in {161..180}
do
rm -r sbs_s$i
mkdir sbs_s$i
cp saw_polymer_dat.txt in.sbs2 job.sh sbs_s$i/
sd_val=$(sed -n "$i p" random_data | awk '{print $1}')
cd sbs_s$i
cat in.sbs2 | sed -e "1s/variable sd equal 1365/variable sd equal $sd_val/" > in.sbs
mv in.sbs in.sbs2
bash job.sh
cd ..
done
