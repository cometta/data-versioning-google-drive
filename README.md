

## Preparation 
- install DVC cli and git cli

## Setup (one time only on your project folder - this will create .dvc folder)
- dvc init

## Add data file to track
- dvc add data/People_data_229MB.csv  (add the data file that you want to track the version)
- git add data/People_data_229MB.csv.dvc data/.gitignore
- git commit -m "Add raw csv file"


## Add Google drive (one time only on your project folder)
- go to google drive create a empty folder and give it a name for example "dvc_test" , the get the  id of the Google Drive folder
- dvc remote add --default myremote \
                           gdrive://1_xf7TNOVQxFlI7eV7jOeqbvAsDYt2D8Q


## push files into Google drive  (it will ask for token for the first time, copy the link and put on the browser)
- dvc push



## if your team mates make changes to the data
- dvc pull


## if you modify the data file
- dvc add data/People_data_229MB.csv 
- dvc push
- git add data/People_data_229MB.csv.dvc data/.gitignore
- git commit -m "Editted raw csv file"


## if you modify the data file (short cut, dvc commit will auto detect all data files changes)
- dvc commit   
- dvc push
- git add data/People_data_229MB.csv.dvc data/.gitignore
- git commit -m "Editted raw csv file"
