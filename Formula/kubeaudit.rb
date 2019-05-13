class Kubeaudit < Formula
  desc "Audit your Kubernetes clusters against common security controls"
  homepage "https://github.com/Shopify/kubeaudit"
  url "https://github.com/Shopify/kubeaudit/releases/download/v0.6.0/kubeaudit_0.6.0_darwin_amd64.tar.gz"
  version "0.6.0"
  sha256 "c50d915b3dff6965453b99b87b3b9b2e3cbb94068f6bdc59005c8d40c23ad093"

  def install
    bin.install "kubeaudit"
    bin.install_symlink "kubeaudit" => "kubectl-audit"
  end

  def caveats; <<~EOS
    kubeaudit is also installed as a kubectl plugin.
    $ kubectl audit

    This is not the official Formula from the creator of `kubeaudit`. It is only for my personal
    use until Shopify provides a official Formula.
    In the meantime jump over to github and star the repository.
    https://github.com/Shopify/kubeaudit

    Kudos to Shopify for creating kubeaudit. https://github.com/Shopify
  EOS
  end

  test do
    system "#{bin}/kubeaudit", "-h"
  end
end
