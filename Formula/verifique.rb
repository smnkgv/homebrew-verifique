class Verifique < Formula
  desc "Verification queue for coding agents"
  homepage "https://verifique.ai"
  url "https://github.com/smnkgv/verifique/releases/download/v0.2.0/verifique-macos-arm64.tar.gz"
  version "0.2.0"
  sha256 "4cb523779f6223cf171d99a9d1cd161b9748a8621e0700c157e297faa0b97f37"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "verifique"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/verifique --version")
  end
end
