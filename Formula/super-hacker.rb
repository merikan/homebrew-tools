class SuperHacker < Formula
  desc "SuperHacker make you look like a hacker"
  homepage "https://github.com/briandowns/super-hacker"
  url "https://github.com/briandowns/super-hacker/releases/download/v0.1.0/super-hacker-darwin.tar.gz"
  version "0.1.0"
  sha256 "c6c7b4bdf8e2484c1a90a72f14cca20d7f5b7bd54a7b52cf621acaaa4cb4c54d"

  def install
    bin.install "super-hacker-darwin" => "super-hacker"
  end

  def caveats; <<~EOS
    👉 Note!!
    This is not the official Formula from the creator of `SuperHacker`. It is only for my personal
    use until Brian Downs provides a official Formula.
    In the meantime, jump over to github and star the repository.
    https://github.com/briandowns/super-hacker

    Kudos to Brian Downs for creating this tool. 👍
  EOS
  end

  test do
    system "#{bin}/super-hacker", "-v"
  end
end
