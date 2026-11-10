class Verifique < Formula
  desc "Verification queue for coding agents"
  homepage "https://verifique.ai"
  version "0.3.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.2/verifique-macos-arm64.tar.gz"
      sha256 "37e101b56a5b19537d0f4c3ffa1b11abf64504c74c275b0c6e89b6067f8a9fc1"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.2/verifique-macos-x64.tar.gz"
      sha256 "fb611ced64b03d3f8898a9db9796aaa7ab1a9638dbb6cc8deb52b7cceda29971"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.2/verifique-linux-arm64.tar.gz"
      sha256 "c9bc1442aa85a3d498326fe25ceb3e889694a6b222110bd2f57b5a433fe4ba55"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.2/verifique-linux-x64.tar.gz"
      sha256 "bdbc1b9a72307361658901c55b0a52454274ec32b25100a4c871ad9233cbc357"
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
