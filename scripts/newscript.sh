#!/bin/bash

# Author: Friedrich Wilms
# Date Created: 5.2.2024
# Date Modified: 5.2.2024

# Description:
# Crates a new shell script template 

# Usage:
# ./newscript.sh filename

if [ -z $1 ]
then
        echo "Wrong usage: Provide a filename"
        echo "Example usage: ./new_script.sh example_filename"
        exit 1
fi

filename=$1.sh
today=$(date +%d.%m.%Y\ %H:%M)

echo "#!/bin/bash" >> $filename
echo "" >> $filename
echo "# Author: Friedrich Wilms ($USER)" >> $filename
echo "# Created: $today" >> $filename
echo "# Last modified: $today" >> $filename
echo "" >> $filename
echo "# Description:">> $filename
echo "# " >> $filename
echo "" >> $filename
echo "# Usage:" >> $filename
echo "# ./$filename" >> $filename
echo "" >> $filename
echo "echo "Here comes your shell script"" >> $filename
echo "" >> $filename
echo "exit 0" >> $filename
echo "A new script with name $filename was successfully created"

exit 0