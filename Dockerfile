FROM configcat/feature-flag-reference-validator:1.3.0

LABEL com.github.actions.name="ConfigCat Feature Flag Reference Validator"
LABEL com.github.actions.description=""
LABEL homepage="https://www.configcat.com"

ENTRYPOINT ["/feature-flag-reference-validator"]
