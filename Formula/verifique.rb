class Verifique < Formula
  desc "Verification queue for coding agents"
  homepage "https://verifique.ai"
  version "0.3.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.4/verifique-macos-arm64.tar.gz"
      sha256 "a85f119207a1881f05bde100874d5aba453bbc95479db28526105c1f0bc1edbc"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.4/verifique-macos-x64.tar.gz"
      sha256 "3b37cd322873add6cc1537785ef40ffddcc68a38cdb085ad28a29724948d93e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.4/verifique-linux-arm64.tar.gz"
      sha256 "a6b214f8a35aec2a928ded6fa93ad90727452ed60fffd30680b69c8d14b3a573"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.4/verifique-linux-x64.tar.gz"
      sha256 "b8dcfa749702dbdc0ffcfae6f045381e4e243bb20b2288e735b6c919192155b5"
    end
  end

  def install
    bin.install "verifique"
  end

  def caveats
    <<~EOS
      Database support is an add-on. Install the ones your projects use, such as:
        verifique plugin add postgres mongo redis
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/verifique --version")
  end
end
