FROM node:current
MAINTAINER agniva.quicksilver@gmail.com

# Adding it globally for simplicity and
# pinning it down to a specific version
# for consistency
RUN yarn global add prettier@1.18.2

WORKDIR /wd
ADD .prettierignore /.prettierignore
ADD .prettierrc /.prettierrc

ENTRYPOINT ["prettier", "--ignore-path", "/.prettierignore", "--write"]
