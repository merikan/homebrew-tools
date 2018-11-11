class Gitleaks < Formula
  desc "Audit git repos for secrets"
  homepage "https://github.com/zricethezav/gitleaks"
  url "https://github.com/zricethezav/gitleaks/releases/download/v1.19.3/gitleaks-darwin-amd64"
  version "1.19.3"
  sha256 "84396cef693dc064869789a6b56087085639d46beec3025a33bd626533e7534e"

  def install
    bin.install "gitleaks"
  end

  test do
    system "#{bin}/gitleaks -v"
  end
end
