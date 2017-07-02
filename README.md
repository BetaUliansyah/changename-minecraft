# changename-minecraft
Bash Script to change your Minecraft displayName quickly

Example:
./changename.sh HeroBrineWannabe

The script utilize grep and sed command to do the job. First, grep command search the current name. Then sed command replace current name with new name supplied in the argument. No need to do any chmod, since sed can write to 400 (no read permission) file.
