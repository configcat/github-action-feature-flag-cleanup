# ConfigCat Feature Flag Cleanup for GitHub Actions

This GitHub Action is a utility that discovers [ConfigCat feature flag](https://configcat.com) usages in your source
code and validates them against your own feature flags on the [ConfigCat Dashboard](https://app.configcat.com).
Documentation: https://github.com/configcat/feature-flag-reference-validator

## To get started
1. Get your API Key from [ConfigCat Dashboard](https://app.configcat.com/connect) and store it as a [GitHub secret](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets) under the name `CONFIG_CAT_API_KEY` in your repository settings.

2. Create a new Actions workflow in your GitHub repo.

- **If you already have an `action.yml` file:** Copy and paste the `ConfigCatFeatureFlagCleanup` job declaration below into the jobs section in your `action.yml` file.
- **If you don't already have a workflow file:** Create a new file titled `action.yml` in the `.github/workflows` directory of your repository. Copy and paste the following code to `action.yml`.

```yaml
on: push
name: Example Workflow
jobs:
  ConfigCatFeatureFlagCleanup:
    name: ConfigCat Feature Flag Cleanup
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: ConfigCat Feature Flag Cleanup
      uses: configcat/github-action-feature-flag-cleanup@master
      with:
        configcat-api-key: ${{ secrets.CONFIG_CAT_API_KEY }}
        fail-on-warnings: false
```

> We strongly recommend that you update the second uses attribute value to reference the latest tag in the [configcat/github-action-feature-flag-cleanup](https://github.com/configcat/github-action-feature-flag-cleanup) repository. This pins your workflow to a latest version of the action.

3. Create a new branch and commit `action.yml`.

4. Submit a PR to your code reviewers to be merged into your master branch.

> Feature Flag Cleanup is not blocked by PR approval. To block the PR set `fail-on-warnings: true`.

As shown in the example above, the workflow should run on the push event and contain an action provided by the [configcat/github-action-feature-flag-cleanup](https://github.com/configcat/github-action-feature-flag-cleanup) repository.

## Additional configuration options

In the `with` section you can configure the event with additional input variables to enable more functionality.

| Parameter           |Description                                                                    |   Default|
|---------------------|-------------------------------------------------------------------------------|:-------------------:|
|`configcat-api-key`    |The api key of your ConfigCat project.                                         | CONFIG_CAT_API_KEY |
|`scan-directory`       |The directory to scan for flag references.                                     | .                  |
|`configcat-cdn-server` |The domain name of the ConfigCat CDN where you ConfigCat configuration file is stored.| cdn.configcat.com |
|`fail-on-warnings`     |Signals a build error when the validation fails. By default only warnings are showed.| false |
|`debug`                |Turns on detailed logging.| false |
