cd %~dp0
arm-none-eabi-as -mcpu=cortex-m0 -mthumb -o main.out main.asm
arm-none-eabi-ld -Ttext=0x00 -o main.elf main.out
arm-none-eabi-objcopy -O binary main.elf firmware.bin
arm-none-eabi-objdump -D main.elf > objdump.txt
echo %date% %time%