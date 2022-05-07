# tmpnim
## create and remove ramdisks in nim!
***the program must run as root to work properly***
### INSTALL:
nimble install tmpnim

### USAGE:
``` 
import tmpnim
echo createRamdisk("/home/turtle/fundirectory", 4096) #create a ramdisk of 4kb in the specified directory
#if everything goes fine it will return true
echo removeRamdisk("/home/turtle/fundirectory")
#same thing, if it returns true everything's fine.
```

### COMPATIBILITY:
✅Linux

❌Windows

❌MacOS

❌FreeBSD

❓Android

**If you encounter any problem please report it in the issue page, pull requests are accepted**

_never trust turtles_

