class Verifique < Formula
  desc "Verification queue for coding agents"
  homepage "https://verifique.ai"
  url "https://github.com/smnkgv/verifique/releases/download/v0.2.2/verifique-macos-arm64.tar.gz"
  version "0.2.2"
  sha256 "111474a9765bbb3cdd51c7e9ec07030cc23fb8d6f0f4eb6cfbc015394d4d4f8a"
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
