#!/bin/bash
cp `which nc` ./nc
#{ echo -ne "HTTP/1.0 200 OK\r\n\r\n"; echo testxyzzyDISCLOSE; } | DYLD_FORCE_FLAT_NAMESPACE=1 DYLD_INSERT_LIBRARIES=./redhook.so ./nc -l 8080
{ echo -ne "HTTP/1.0 200 OK\r\n\r\n"; echo testxyzzyOVERFLOW; } | DYLD_FORCE_FLAT_NAMESPACE=1 DYLD_INSERT_LIBRARIES=./redhook.so ./nc -l 8080
rm -f ./nc
