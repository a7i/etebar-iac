FROM hashicorp/terraform:0.12.20
WORKDIR /workspace
ENTRYPOINT [ "sh", "-c", "bin/plan && bin/apply" ]