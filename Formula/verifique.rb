class Verifique < Formula
  desc "Verification queue for coding agents"
  homepage "https://verifique.ai"
  version "0.3.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.5/verifique-macos-arm64.tar.gz"
      sha256 "00660f5bd105c4f236cb80e184c5a22031eb1ce719dbf9cb7329a31ec51f0021"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.5/verifique-macos-x64.tar.gz"
      sha256 "0bcc2afc3f8d17276eb46cda4a6cde19f8e1d2b030b638571dc0c6aa3d1fbfd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.5/verifique-linux-arm64.tar.gz"
      sha256 "ab9ddd4b41821ebc19b443dc76628d75f97c30026da47bdce98d377471963dd1"
    end
    on_intel do
      url "https://github.com/smnkgv/verifique/releases/download/v0.3.5/verifique-linux-x64.tar.gz"
      sha256 "c702734b9a6a697f00a6de4b9dcd3ff93a743ce5db92a1ab1917882fefd02f75"
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
