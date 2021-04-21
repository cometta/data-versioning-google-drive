

## Preparation 
- install DVC cli and git cli

## Setup (one time only on your project folder)
- dvc init

## Add data file to track
- dvc add data/People_data_229MB.csv  (add the data file that you want to track the version)
- git add data/People_data_229MB.csv.dvc data/.gitignore
- git commit -m "Add raw csv file"


## Add Google drive
- go to google drive create a empty folder and give it a name for example "dvc_test" , the the id of the Google Drive folder
- dvc remote add --default myremote \
                           gdrive://1_xf7TNOVQxFlI7eV7jOeqbvAsDYt2D8Q


## push files into Google drive
- dvc push



## if your team mates make changes to the data
- dvc pull


## if you modify the data file
- dvc add data/People_data_229MB.csv 
- git add data/People_data_229MB.csv.dvc data/.gitignore
- dvc push
- git commit -m "Editted raw csv file"
