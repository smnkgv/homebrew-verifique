class Verifique < Formula
  desc "Verification queue for coding agents"
  homepage "https://verifique.ai"
  version "0.3.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.7/verifique-macos-arm64.tar.gz"
      sha256 "7bae6e7c0215387f4d6be4fd91c98fd02617dcaf27b8a132597d0c48ab4c2479"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.7/verifique-macos-x64.tar.gz"
      sha256 "146e23d430fc07d8e594af864f5e78ccdf5b3c7ae4dd88cfaf25cbfa4b3ad87f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.7/verifique-linux-arm64.tar.gz"
      sha256 "caec3034c74964d90a109c2ad70c6842b31ee180bf66d3dca55116fa3536204b"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.7/verifique-linux-x64.tar.gz"
      sha256 "b345a9b35704b5c27c28da58dae2b6359ca2229f9993e47a92de4ff6ef78ea13"
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
