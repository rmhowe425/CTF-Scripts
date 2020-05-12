echo "[+] Assembling with Nasm..."
nasm -f elf32 -g $1".asm" 
echo "[+] Linking...."
ld -o $1 $1".o" -m elf_i386
echo "[+] Done!"
echo ""


objdump -d ./shellcode.o|grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'








