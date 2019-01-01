class Kubeaudit < Formula
  desc "Audit your Kubernetes clusters against common security controls"
  homepage "https://github.com/Shopify/kubeaudit"
  url "https://github.com/Shopify/kubeaudit/releases/download/v0.3.0/kubeaudit_0.3.0_darwin_amd64.tar.gz"
  version "0.3.0"
  sha256 "23c1fa3aeeb7be56f8a8c47df1b96ba6f6f56054458796c74dc857a21c942c2e"

  def install
    bin.install "kubeaudit"
  end

  def caveats; <<~EOS
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
