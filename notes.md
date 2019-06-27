> Notes to myself

- [How to create a Formula](#how-to-create-a-formula)
- [How to update a Formula](#how-to-update-a-formula)
- [How to migrate a formula](#how-to-migrate-a-formula)
- [How to rename a formula](#how-to-rename-a-formula)


# How to create a Formula
> This is a note to myself how to create a 3d party formula. In the following case it is a small gem called kind. 
1. Update homebrew
   ```bash
   $ brew update && brew upgrade
   ```
1. Cd into the tap
   ```bash
   $ cd  $(brew --repo merikan/tools)
   ```
1. Checkout a new branch (kind) to work in
    ```bash
    $ git checkout -b kind
    ```
1. Create the formula
    We will use the `brew create` command with a URL to the binary and using the opetion `--tap`.
    ```bash
    $ brew create https://github.com/kubernetes-sigs/kind/releases/download/v0.4.0/kind-darwin-amd64 —-tap merikan/homebrew-tools
    ==> Downloading https://github.com/kubernetes-sigs/kind/releases/download/v0.4.0/kind-darwin-amd64
    ==> Downloading from https://github-production-release-asset-2e65be.s3.amazonaws.com/148545807/a9f2c580-976d-11e9-85ed-448144aa21f7?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20190626%2Fus-east-1%2Fs3%2Faws4_
    ######################################################################## 100.0%
    Warning: Cannot verify integrity of d26d593c91a3532a21f85860cb32694b99de3eeb110c87459187142780726da1--kind-darwin-amd64
    A checksum was not provided for this resource
    For your reference the SHA-256 is: 023f1886207132dcfc62139a86f09488a79210732b00c9ec6431d6f6b7e9d2d3
    Please `brew audit --new-formula kind` before submitting, thanks.
    Editing /usr/local/Homebrew/Library/Taps/merikan/homebrew-tools/Formula/kind.rb
    ```
    Homebrew will download the binary and try to populate `desc`, `homepage`, `url`, `version` and `sha256` and then open the Formula in your default editor. Make sure it’s created in the right directory, in my case it is  `/usr/local/Homebrew/Library/Taps/merikan/homebrew-tools/Formula`
    Now edit the the formula and save it.
1.  This is the formula after editing
    ```bash
    class Kind < Formula
      desc "Kubernetes IN Docker - local clusters for testing Kubernetes"
      homepage "https://kind.sigs.k8s.io/"
      url "https://github.com/kubernetes-sigs/kind/releases/download/v0.4.0/kind-darwin-amd64"
      version "0.4.0"
      sha256 "023f1886207132dcfc62139a86f09488a79210732b00c9ec6431d6f6b7e9d2d3"

      def install
        bin.install "kind-darwin-amd64" => "kind"
      end

      def caveats; <<~EOS
        This is not the official Formula from the creator of `kind`. It is only for my personal
        use until the Kubernetes team provides a official Formula.
        In the meantime jump over to github and star the repository.
        https://github.com/kubernetes-sigs/kind

        Kudos to Kubernetes Team for creating kind. https://kubernetes.io/
      EOS
      end

      test do
        system "#{bin}/kind", "-h"
      end
    end
    ```
1.  lint the formula and fix any error
    ```bash
    $ brew audit --strict --online kind
    ```
1.  Install the formula
    ```bash
    $ brew install kind
    Updating Homebrew...
    ==> Auto-updated Homebrew!
    Updated 1 tap (homebrew/cask).
    No changes to formulae.

    ==> Installing kind from merikan/tools
    ==> Downloading https://github.com/kubernetes-sigs/kind/releases/download/v0.4.0/kind-darwin-amd64
    Already downloaded: /Users/peter/Library/Caches/Homebrew/downloads/d26d593c91a3532a21f85860cb32694b99de3eeb110c87459187142780726da1--kind-darwin-amd64
    ==> Caveats
    This is not the official Formula from the creator of `kind`. It is only for my personal
    use until the Kubernetes team provides a official Formula.
    In the meantime jump over to github and star the repository.
    https://github.com/kubernetes-sigs/kind

    Kudos to Kubernetes Team for creating kind. https://kubernetes.io/
    ==> Summary
    🍺  /usr/local/Cellar/kind/0.4.0: 3 files, 34.4MB, built in 6 seconds    
    ```
1. Run the tests
   ```bash
   $ brew test kind
   ```
1. Now run the formula and make sure everything works ok.
1. Commit, merge and push the changes
   ```bash
   $ git add .
   $ git commit -m "kind: 0.4.0"
   $ git checkout master
   $ git merge master kind
   $ git branch -d kind
   $ git push
   ```



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
1. Checkout a new branch (gitleaks) to work in
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
1. Commit, merge and push the changes
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
