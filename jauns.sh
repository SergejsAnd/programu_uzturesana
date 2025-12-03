
#!/bin/bash

# pārbauda vai lietotājs ir ievadijis faila nosaukumu, kas ir pirmais mainīgais
if [ -z "$1" ]; then
echo "Usage: $0 filename"
exit 1
fi

name=$1

#pārbauda vai fails eksistē ar šādu nosaukumu
if [ -e "$name" ]; then
echo "Error: File '$name' already exists."
exit 1
fi

touch $name

#ieraksta failā pirmo rindu
echo "#!/bin/bash" > "$name"

#piešķir izpildīšanas tiesības visiem lietotājiem
chmod +x $name
echo "You cretaed file: $name and it located: "
pwd
ls -la |grep $name

