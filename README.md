# Homebrew tools

This is my homebrew tap where I'm brewing some nice tools for easy installation with [Homebrew](https://brew.sh/)

- [clair-scanner](#clair-scanner) - scan Docker containers for vulnerabilities
- [gitleaks](#gitleaks) - find unencrypted secrets and other unwanted data types in git
- [jsonui](#jsonui) - interactive JSON explorer on your command line
- [kubeaudit](#kubeaudit) - audit your Kubernetes clusters against common security controls

> [Notes to myself how to upgrade a third party Formula](update_formula.md)

## clair-scanner
clair-scanner enables scanning local docker images against [Clair](https://github.com/coreos/clair), a Vulnerability Static Analyzer for Containers.
Jump over to github and read more about [clair-scanner](https://github.com/arminc/clair-scanner) and don't forget star [the repository](https://github.com/arminc/clair-scanner)

> Note: This is **not** the official Formula from the creator of clair-scanner. It is only for my personal use until Armin Coralic provides a official Formula.

### Install
```bash
# tap this tap
brew tap merikan/tools
# install
brew install clair-scanner
```

## gitleaks
Gitleaks provides a way for you to find unencrypted secrets and other unwanted data types in git source code repositories.
Jump over to github and read more about [gitleaks](https://github.com/zricethezav/gitleaks) and don't forget star [the repository](https://github.com/zricethezav/gitleaks)

> Note: This is **not** the official Formula from the creator of gitleaks. It is only for my personal use until Zachary provides a official Formula.

### Install
```bash
# tap this tap
brew tap merikan/tools
# install
brew install gitleaks
```

## jsonui
jsonui is an interactive JSON explorer on your command line
Jump over to github and read more about [jsonui](https://github.com/gulyasm/jsonui) and don't forget star [the repository](https://github.com/gulyasm/jsonui)

> Note: This is **not** the official Formula from the creator of jsonui. It is only for my personal use until Máté provides a official Formula.

### Install
```bash
# tap this tap
brew tap merikan/tools
# install
brew install jsonui
```

## kubeaudit
kubeaudit helps you audit your Kubernetes clusters against common security controls
Jump over to github and read more about [kubeaudit](https://github.com/Shopify/kubeaudit) and don't forget star [the repository](https://github.com/Shopify/kubeaudit)

> Note: This is **not** the official Formula from the creator of kubeaudit. It is only for my personal use until Shopify provides a official Formula.

### Install
```bash
# tap this tap
brew tap merikan/tools
# install
brew install kubeaudit
```

## License

This project is licensed under the terms of the [MIT License](LICENSE).
