# Homebrew tools

This is my homebrew tap where I'm brewing some nice tools for easy installation with [Homebrew](https://brew.sh/)

- [Sagascript](https://github.com/Magnus-Gille/sagascript) Push-to-talk transcription with local Whisper models.
- [guitar](https://github.com/asinglebit/guitar) A git client with fast topological & chronological graph rendering
- [clair-scanner](#clair-scanner) - scan Docker containers for vulnerabilities
- [gdu-go](#gdu-go) - fast disk usage analyzer with console interface
- [jsonui](#jsonui) - interactive JSON explorer on your command line
- [kubeaudit](#kubeaudit) - audit your Kubernetes clusters against common security controls
- [super-hacker](#super-hacker) - SuperHacker make you look like a hacker

> How to create and update my personal formulas can be found here 👉 [Notes to myself](notes.md)

## Sagascript

[Sagascript](https://github.com/Magnus-Gille/sagascript) is a low-latency, privacy-first dictation for macOS. Push-to-talk transcription with local Whisper models.

I wrote a blog post about Sagascript. [Just talk to your agent | Callista](https://callistaenterprise.se/blogg/teknik/2026/08/25/push-and-talk/)
Jump over to github and read more about [Sagascript](https://github.com/Magnus-Gille/sagascript) and don't forget star [the repository](https://github.com/Magnus-Gille/sagascript)

> Note: This is **not** the official Cask from the creator of Sagascript. It is only for my personal use until Magnus Gille provides a official Cask.

### install
```bash
brew install --cask merikan/tools/sagascript 

```

## guitar

[guitar](https://github.com/asinglebit/guitar) is a terminal based git client with fast topological & chronological graph rendering
Jump over to github and read more about [guitar](https://github.com/asinglebit/guitar) and don't forget star [the repository](https://github.com/asinglebit/guitar)

> Note: This is **not** the official Formula from the creator of guitar. It is only for my personal use until Gasimov.Abdulali provides a official Formula.

I took the liberty of also creating an alias named "gitr", it felt appropriate.

### Install
```bash
brew install merikan/tools/guitar
```

## clair-scanner
clair-scanner enables scanning local docker images against [Clair](https://github.com/coreos/clair), a Vulnerability Static Analyzer for Containers.   
Jump over to github and read more about [clair-scanner](https://github.com/arminc/clair-scanner) and don't forget star [the repository](https://github.com/arminc/clair-scanner)

> Note: This is **not** the official Formula from the creator of clair-scanner. It is only for my personal use until Armin Coralic provides a official Formula.

### Install
```bash
brew install merikan/tools/clair-scanner
```

## gdu-go
gdu is fast disk usage analyzer with console interface
Jump over to github and read more about [gdu](https://github.com/dundee/gdu) and don't forget star [the repository](https://github.com/dundee/gdu)

> Note:   
> This is **not** the official Formula from the creator of gdu. It is only for my personal use since it is a [name clash with `gdu` in `coreutils`](https://github.com/dundee/gdu/issues/48).   
> The binary will be installed as `gdu-go` and I will use an alias in the shell instead `alias gdu='gdu-go`.

### Install
```bash
brew install merikan/tools/jsonui
```

## jsonui
jsonui is an interactive JSON explorer on your command line.   
Jump over to github and read more about [jsonui](https://github.com/gulyasm/jsonui) and don't forget star [the repository](https://github.com/gulyasm/jsonui)

> Note: This is **not** the official Formula from the creator of jsonui. It is only for my personal use until Máté provides a official Formula.

### Install
```bash
brew install merikan/tools/jsonui
```

## kubeaudit
kubeaudit helps you audit your Kubernetes clusters against common security controls.   
Jump over to github and read more about [kubeaudit](https://github.com/Shopify/kubeaudit) and don't forget star [the repository](https://github.com/Shopify/kubeaudit)

> Note: This is **not** the official Formula from the creator of kubeaudit. It is only for my personal use until Shopify provides a official Formula.

### Install
```bash
brew install merikan/tools/kubeaudit
```

## super-hacker
SuperHacker make you look like a hacker (just for fun).   
Jump over to github and read more about [super-hacker](https://github.com/briandowns/super-hacker) and don't forget star [the repository](https://github.com/briandowns/super-hacker)

> Note: This is **not** the official Formula from the creator of super-hacker. It is only for my personal use until [Brian Downs](https://github.com/briandowns) provides a official Formula.

### Install
```bash
brew install merikan/tools/super-hacker
```

## License

This project is licensed under the terms of the [MIT License](LICENSE).
