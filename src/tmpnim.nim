import strformat
proc mount(special_file, dir, fstype: cstring, rwflag: culong, data: pointer): cint {.importc, header: "<sys/mount.h>".} ##import the magic header that do black magic 
proc umount(dir: cstring): cint {.importc, header: "<sys/mount.h>".} ##import the magic header that do black magic
##1. import header doing everything and make proc using it
##2. make another proc using it that does not require weird cstring stuff and has a better name
##3. ???
##4. profit


#i think i'm dedicating too much time on a 25 line code, but what if someone in the future will use this?
proc createRamdisk*(directory: string, size: int): bool = ##PROGRAM MUST BE RUN AS ROOT TO WORK OR ELSE IT WILL FAIL
    var sex: string = fmt"size={size},uid=0,gid=0,mode=755" #i'm not going to change the variable name.
    if mount(cstring"tmpfs", cstring(directory), cstring"tmpfs", 0, cstring(sex)) == 0:
        return true ##return true if the status code is 0, so it worked correctly
proc removeRamdisk*(directory: string): bool =   ##PROGRAM MUST BE RUN AS ROOT TO WORK OR ELSE IT WILL FAIL
    if umount(cstring(directory)) == 0:
        return true ##same as createRamdisk

#do you know that turtles can run very fast?
#i got chased by one when i was a kid
#that little fucker almost got me
#never trust turtles.
# -robbie
