class AmazonCartPriceChanges < Formula
  desc "Browser extension showing Amazon cart price changes as cards or a table"
  homepage "https://github.com/Coursion-Studio/amazon-cart-price-changes"
  url "https://github.com/Coursion-Studio/amazon-cart-price-changes/releases/download/v1.0.0/amazon-cart-price-changes-1.0.0.zip"
  sha256 "c6a2bc73967aa51a0a711396075af93c32308d6a3c63df881854e3cebe1fc3e9"
  license "MIT"

  def install
    pkgshare.install Dir["*"]
  end

  def caveats
    <<~EOS
      This is a browser extension for Dia, Chrome, Arc, Brave and Edge. Load it once:
        1. Open dia://extensions (or chrome://extensions) and turn on Developer mode.
        2. Click "Load unpacked" and choose this folder:
             #{HOMEBREW_PREFIX}/share/amazon-cart-price-changes
      After `brew upgrade`, click the reload icon on the extension's card.
    EOS
  end

  test do
    assert_match "Cart Price Changes for Amazon", (pkgshare/"manifest.json").read
  end
end
