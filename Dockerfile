FROM configcat/feature-flag-reference-validator:1.1.0

LABEL com.github.actions.name="ConfigCat Feature Flag Reference Validator"
LABEL com.github.actions.description="Find ConfigCat feature flag usages in your source code and validating them against your own ConfigCat configuration dashboard."
LABEL homepage="https://www.configcat.com"

ENTRYPOINT ["configcat-validator.py"]
