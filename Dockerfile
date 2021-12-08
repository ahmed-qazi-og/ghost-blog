#FROM  public.ecr.aws/e5s7u0b5/ghost-4-alpine:latest
#FROM ghost:4-alpine
#WORKDIR /var/lib/ghost

#COPY . /var/lib/ghost/current

#################
#COPY config.production.json /var/lib/ghost/
### Added by Ahhmed
#RUN npm install ghost-storage-adapter-s3 \
   # && mkdir -p ./content.orig/adapters/storage \
    #&& cp -vr ./node_modules/ghost-storage-adapter-s3 ./content.orig/adapters/storage/s3
############
#RUN npm install ghost-storage-adapter-s3

#RUN mkdir -p ./content/adapters/storage && cp -r ./node_modules/ghost-storage-adapter-s3 ./content/adapters/storage/s3

###RN DOcker#######
#FROM 038540414823.dkr.ecr.us-east-1.amazonaws.com/rnair-ghost:250f720
FROM ghost:4-alpine
WORKDIR /var/lib/ghost

COPY . /var/lib/ghost/current

##########
#COPY config.production.json /var/lib/ghost/
### Added by Ahhmed
#RUN npm install ghost-storage-adapter-s3 \
   # && mkdir -p ./content.orig/adapters/storage \
    #&& cp -vr ./node_modules/ghost-storage-adapter-s3 ./content.orig/adapters/storage/s3
############
RUN npm install ghost-storage-adapter-s3

RUN mkdir -p ./content/adapters/storage && cp -r ./node_modules/ghost-storage-adapter-s3 ./content/adapters/storage/s3 && ls -al ./content/adapters/storage/s3

