output=$(useradd -D | grep INACTIVE | cut -d'=' -f 2)
echo $output

#2 minlen
grep 'minlen' /etc/security/pwquality.conf

#/etc/pam.d/system-auth - pam_cracklib.so - minlen"
#output=$(egrep '^password\s+requisite\s+pam_cracklib.so' /etc/pam.d/system-auth | awk '{for(i=1; i<=NF; i++) {tmp=match($i, /minlen/); if(tmp) { print $i } } }' | cut -d'=' -f 2)
#echo $output

#3 user expiry
username=$USER
chage -l $username 
