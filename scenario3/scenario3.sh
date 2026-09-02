grep "CLUE" crimescene

# change directory into the directory containing all the case files
cd clmystery/mystery

grep "Annabel" people

# check the streets folder for each Female Annabel to get the interview numbers
head -n 40 streets/Hart_Place | tail -n 1
head -n 179 streets/Buckingham_Place | tail -n 1

# check the interviews folder for the Annabel witness living on Hart Place - not the witness
cat interviews/interview-47246024

# check interview for Annabel in Buckingham - the witness
cat interviews/interview-699607

# she says suspect has blue honda with license no starting with "L337" and ending with "9"

# go to vehicles file and search using the car description above and put the output in allSuspects file
grep -A 5 "L337" vehicles | grep -A 6 "Honda" | grep -A 7 "Blue" > allSuspects.txt

#remove Owner: on each line to get just the name alone. -i edits the file making the change permanent
sed -i 's/Owner: //g' allSuspects.txt

cd memberships
# combine the 4 memberships of the suspect and filter with allSuspects file
# then sort and count the memberships. the highest should be 4 and whoever has 4 is our criminal then get the name alone using awk with comma for space to appear between the column values

# save answer in mysolution file

cat Rotary_Club Delta_SkyMiles Terminal_City_Library Museum_of_Bash_History | grep -f ../allSuspects.txt | sort | uniq -c | sort -rn | head -n 1 | awk '{print $2,$3}' > ~/mysolution
