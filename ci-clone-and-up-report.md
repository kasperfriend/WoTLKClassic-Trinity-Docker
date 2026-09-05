# compose auto-build report (2026-09-05T10:22:58Z)

## does 'compose up' build a missing image?
```
--- image absent before up:
ABSENT(expected)
--- docker compose up -d (no prior docker build):
 app Pulling 
 app Warning pull access denied for stub-test, repository does not exist or may require 'docker login': denied: requested access to the resource is denied
#1 [internal] load local bake definitions
#1 reading from stdin 316B done
#1 DONE 0.0s

#2 [internal] load build definition from Dockerfile
#2 transferring dockerfile: 70B done
#2 DONE 0.0s

#3 [auth] library/busybox:pull token for registry-1.docker.io
#3 DONE 0.0s

#4 [internal] load metadata for docker.io/library/busybox:latest
#4 DONE 0.5s

#5 [internal] load .dockerignore
#5 transferring context: 2B done
#5 DONE 0.0s

#6 [1/1] FROM docker.io/library/busybox:latest@sha256:dc2d74b28e4cf8984fa52af1f39bc7c3d9c73760b41a74d629f5d11b1ab28616
#6 resolve docker.io/library/busybox:latest@sha256:dc2d74b28e4cf8984fa52af1f39bc7c3d9c73760b41a74d629f5d11b1ab28616 done
#6 extracting sha256:b05093807bb0294152bb9cf86d64da722732dddaf7f8882fa1f120477dbc4db3
#6 sha256:c6348fa86ba0fb2108c9334f5fe913ddc6d853313e655891f133a0127c30099f 459B / 459B done
#6 sha256:b05093807bb0294152bb9cf86d64da722732dddaf7f8882fa1f120477dbc4db3 2.23MB / 2.23MB 0.0s done
#6 sha256:dc2d74b28e4cf8984fa52af1f39bc7c3d9c73760b41a74d629f5d11b1ab28616 9.54kB / 9.54kB done
#6 sha256:1cfa4e2b09e127b9c4ed43578d3f3c18e7d44ea47b9ea98475c0cbe9086525f8 610B / 610B done
#6 extracting sha256:b05093807bb0294152bb9cf86d64da722732dddaf7f8882fa1f120477dbc4db3 0.1s done
#6 DONE 0.1s

#7 exporting to image
#7 exporting layers done
#7 writing image sha256:ea6a5adec7986cad1c701585eccab16f753f62d55547a5be987a8661bec87c7f done
#7 naming to docker.io/library/stub-test:local done
#7 DONE 0.0s

#8 resolving provenance for metadata file
#8 DONE 0.0s
 app  Built
 Network stubtest_default  Creating
 Network stubtest_default  Created
 Container stubtest-app-1  Creating
 Container stubtest-app-1  Created
 Container stubtest-app-1  Starting
 Container stubtest-app-1  Started
UP_EXIT_0
AUTOBUILD_OK: compose built the missing image itself
--- compose ps:
NAME             IMAGE             COMMAND       SERVICE   CREATED                  STATUS                  PORTS
stubtest-app-1   stub-test:local   "sleep 300"   app       Less than a second ago   Up Less than a second   
```
