# FROM instruction 

docker build  -t alwinurnadzif/from from 

# RUN instruction 

docker build  -t alwinurnadzif/run run 

# COMMAND instruction 

docker build  -t alwinurnadzif/command command 

docker container create --name command alwinurnadzif/command

docker container start command

docker container logs command

# RUN instruction 

docker build  -t alwinurnadzif/label label 
docker image inspect label 

# ADD instruction 

docker build  -t alwinurnadzif/add add 

docker container create --name add alwinurnadzif/add

docker container start add

docker container logs add

# COPY instruction 

docker build  -t alwinurnadzif/copy copy 

docker container create --name copy alwinurnadzif/copy

docker container start copy

docker container logs copy

# Dockerignore 

docker build  -t alwinurnadzif/ignore ignore 

docker container create --name ignore alwinurnadzif/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction 

docker build -t alwinurnadzif/expose expose 

docker container create --name expose -p 8080:8080 alwinurnadzif/expose

docker container start expose

curl localhost:8080 # should return Hello, World!

# ENV Instruction

docker build -t alwinurnadzif/env env 
docker container create --name expose -p 8081:8081 --env APP_PORT=8081 alwinurnadzif/expose

# Volume Instruction

docker build -t alwinurnadzif/volume volume 
docker container create --name volume  --env APP_PORT=8081  -p 8081:8081 alwinurnadzif/volume
