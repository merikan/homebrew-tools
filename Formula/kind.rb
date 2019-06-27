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
