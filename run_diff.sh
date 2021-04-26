
# --rev put the old commit
dvc get .  data/People_data_229MB.csv  --rev 1f68163ecd72dc1ca6420b317d5190e4f5fee7ef  --out old.csvdf
bash diff_csv.sh old.csv data/People_data_229MB.csv
