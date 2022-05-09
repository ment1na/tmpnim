# tmpnim
## create and remove ramdisks in nim!
***the program must run as root to work properly***
### INSTALL:
nimble install tmpnim

### USAGE:
```nim
import tmpnim
echo createRamdisk("/home/turtle/fundirectory", 4096) #create a ramdisk of 4kb in the specified directory
#if everything goes fine it will return true
echo removeRamdisk("/home/turtle/fundirectory") #remove the specified ramdisk, closing the program won't remove it automatically.
#same thing, if it returns true everything's fine.
```

### COMPATIBILITY:
✅Linux

❌Windows

❌MacOS

✅BSD 

✅Android (Root required)

**If you encounter any problem please report it in the issue page, pull requests are accepted**

_never trust turtles_

