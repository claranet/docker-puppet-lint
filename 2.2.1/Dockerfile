FROM ruby:2.4.1

RUN gem install puppet-lint -v 2.2.1
RUN gem install puppet-lint-strict_indent-check

VOLUME /puppet
WORKDIR /puppet
ENV HOME /puppet

ENTRYPOINT ["puppet-lint"]

# see http://label-schema.org/rc1/
LABEL org.label-schema.name="puppet-lint" \
      org.label-schema.version="2.2.1" \
      org.label-schema.description="Puppet-lint" \
      org.label-schema.vendor="Claranet UK" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.vcs-url="https://github.com/claranet/docker-puppet-lint" \
      author1="Ray Butcher<ray.butcher@claranet.uk>"
