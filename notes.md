> Notes to myself

- [How to update a Formula](#how-to-update-a-formula)
- [How to migrate a formula](#how-to-migrate-a-formula)
- [How to rename a formula](#how-to-rename-a-formula)

# How to update a Formula

> This is a note to myself how to update a 3d party formula. In the following case it is a small gem called gitleaks I am updating from version 1.22 to 1.23.
1. Update homebrew
   ```bash
   $ brew update && brew upgrade
   ```
1. Cd into the tap
   ```bash
   $ cd  $(brew --repo merikan/tools)
   ```
1. Checkout a new branch (gitleaks) to work on
    ```bash
    $ git checkout -b gitleaks
    ```
1. Lint current version before editing
   ```bash
   $ brew audit --strict --online gitleaks
   ```
1. Edit the formula   
   Update the url and version. We will let homebrew help us calculate the checksum.
   ```bash
   $ brew edit gitleaks
   ````
1. Calculate the checksum
   ```bash
   $ brew fetch gitleaks

   ==> Fetching gitleaks from merikan/tools
   ==> Downloading https://github.com/zricethezav/gitleaks/releases/download/v1.23.0/gitleaks-darwin-amd64
   ==> Downloading from https://github-production-release-asset-2e65be.s3.amazonaws.com/119190187/06702180-11dc-11e9-98e1
   ######################################################################## 100.0%
   Downloaded to: /Users/peter/Library/Caches/Homebrew/downloads/eac91a3a09ac8d7541117c5db465bd635e75ef1c9e4ddc5b93c240176db4abc2--gitleaks-darwin-amd64
   SHA256: 82397216bd9a362d134a5e190764e5a5233f9feb850c04f5fc60dd682595dbc1
   Warning: Formula reports different SHA256: 1bbf4c84e44b53795bbdacc49c5827e29f3188ec51c7886a5bae38a5b79e2331
   ```
   As you can see, home-brew complains about the checksum. Copy the checksum to the formula and save.
   Run fetch again to make sure it's ok
   ```bash
   $ brew fetch gitleaks

   ==> Fetching gitleaks from merikan/tools
   ==> Downloading https://github.com/zricethezav/gitleaks/releases/download/v1.21.0/gitleaks-darwin-amd64
   Already downloaded: /Users/peter/Library/Caches/Homebrew/downloads/c9b407ec27dc6125a8dff5b3ff47b5c49ec918abbd8380a6daee030a8878cc58--gitleaks-darwin-amd64
   SHA256: 0a7e9160f8dcb19da61c5068a85b18deb68390b0d7215ff078a57fad29f6a3e9
   ```
1. Upgrade the formula
   ```bash
   $ brew upgrade gitleaks
   ==> Upgrading 1 outdated package:
   merikan/tools/gitleaks 1.22.0 -> 1.23.0
   ==> Upgrading merikan/tools/gitleaks
   ==> Downloading https://github.com/zricethezav/gitleaks/releases/download/v1.23.0/gitleaks-darwin-amd64
   Already downloaded: /Users/peter/Library/Caches/Homebrew/downloads/eac91a3a09ac8d7541117c5db465bd635e75ef1c9e4ddc5b93c240176db4abc2--gitleaks-darwin-amd64
   ==> Caveats
   This is not the official Formula from the creator of `gitleaks`. It is only for my personal
   use until Zachary provides a official Formula.
   In the meantime jump over to github and star the repository.
     https://github.com/zricethezav/gitleaks

   Kudos to Zachary for creating gitleaks. https://github.com/zricethezav
   ==> Summary
   🍺  /usr/local/Cellar/gitleaks/1.23.0: 3 files, 18.2MB, built in 4 seconds
   Removing: /usr/local/Cellar/gitleaks/1.22.0... (3 files, 18.2MB)
   Removing: /Users/peter/Library/Caches/Homebrew/gitleaks--1.22.0... (18.2MB)
   ```
   If there are errors you can run `upgrade` with the --verbose and --debug flags.
   ```bash
   $ brew upgrade --verbose --debug gitleaks
   ```
1. Run the tests
   ```bash
   $ brew test gitleaks
   ```
1. lint the new version
   ```bash
   $ brew audit --strict --online gitleaks
   ```
1. Commit and push the changes
   ```bash
   $ git add .
   $ git commit -m "gitleaks: 1.23.0"
   $ git checkout master
   $ git merge master gitleaks
   $ git branch -d gitleaks
   $ git push
   ```

# How to migrate a formula

`gitleaks` was not in the `homebrew/core` tap so I brewed it in this tap. Now gitleaks is available in the core tap and the following example is how to move it from this tap to `homebrew/core` tap

1. Cd into the tap
   ```bash
   $ cd  $(brew --repo merikan/tools)
   ```
1. Create a file called `tap_migrations.json` in the root of the repository.
1. Add the formula name and the name of the new tap
    ```
    {
      "gitleaks": "homebrew/core"
    }
    ```
1. Delete the formula and any text referencing this formula
1. Commit and push
    ```
    $ git add .
    $ git commit -m "gitleaks: migrate to homebrew/core"
    § git push
    ```
1. And update/upgrade
    ```
    $ brew update && brew upgrade
    Already up-to-date.
    ==> Upgrading 1 outdated packages:
    gitleaks 1.24.0 -> 2.0.0
    ==> Upgrading gitleaks
    ==> Downloading https://homebrew.bintray.com/bottles/gitleaks-2.0.0.mojave.bottle.tar.gz
    ==> Downloading from https://akamai.bintray.com/1c/1ce44002a739b7a76d7787bcbf392b2e615e3b553ddc4d29c38e68d16cd00549?__gda__=exp=1561057106~hmac=342264f4e14e4cb5c9765dab9a7bde6e7b1856a30188993b09dc43d65ffbfcff&response-content-disposition=
    ######################################################################## 100.0%
    ==> Pouring gitleaks-2.0.0.mojave.bottle.tar.gz
    🍺  /usr/local/Cellar/gitleaks/2.0.0: 6 files, 17.7MB
    ```

# How to rename a formula
1. Cd into the tap
   ```bash
   $ cd  $(brew --repo merikan/tools)
   ```
1. Rename the formula and any text referencing the formula
1. Create a file called `formula_renames.json` in the root of this repository.
1. Add the old and new name of the formula
    ```
    {
      "oldformula": "newformula"
    }
    ```
1. Commit and push
    ```
    $ git add .
    $ git commit -m "oldformula: renamed to newformula"
    § git push
    ```
