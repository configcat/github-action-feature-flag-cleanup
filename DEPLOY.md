1. Update `README.md` with the new planned version.
   
2. Make sure `Dockerfile` point to the correct `feature-flag-reference-validator:[MAJOR].[MINOR].[PATCH]` image.

3. Create a release
- Via git tag
    1. Create a new version tag.
       ```bash
       git tag [MAJOR].[MINOR].[PATCH]
       ```
       > Example: `git tag 1.2.1`
    2. Push the tag.
       ```bash
       git push origin --tags
       ```
- Via Github release 

Create a new [Github release](https://github.com/configcat/feature-flag-reference-validator/releases) with a new version tag and release notes.