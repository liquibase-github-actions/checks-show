# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.24.0
COPY checks_show.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
