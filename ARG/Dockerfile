ARG version
FROM almalinux:${version:-8}
RUN cat /etc/*release
ARG COURSE=Lerning_Docker
ARG TRAINER=Shashikanth
ARG Duration=120HRS
ENV Duration=${Duration}
RUN echo "Course is: ${COURSE}, Trainer is: ${TRAINER}, Duration is: ${Duration}"
CMD [ "sleep","120" ]