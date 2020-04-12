1. Update `README.md` with the new planned version.
2. Make sure `Dockerfile` point to the correct `feature-flag-reference-validator:[MAJOR].[MINOR].[PATCH]` image.
3. Commit & Push
4. Create a new version tag.
    ```bash
    git tag [MAJOR].[MINOR].[PATCH]
    ```
    > Example: `git tag 1.2.1`
5. Push the tag.
    ```bash
    git push origin --tags
    ```
6. Create a new [Github release](https://github.com/configcat/github-action-feature-flag-cleanup/releases) with a new version tag and release notes.
7. Test using https://github.com/configcat/flag-reference-validator-demo