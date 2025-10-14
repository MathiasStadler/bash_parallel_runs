#!/bin/bash
# FOUND HERE - https://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash/
# FOUND HERE - https://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash/

# 
# shfmt -ln=bash -w 03_loop_file_instead_of_cut.sh
#!/bin/bash
filename='peptides.txt'
echo "${PWD}"
echo $filename
echo Start


# FOUND HERE - https://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash/
#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
	echo "$line"
done <"$filename"
