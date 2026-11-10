cask "verifique-panel" do
  version "0.3.2"

  on_arm do
    sha256 "3ab251eb290723b22efaa5aaf0f4a5a9d1cb512f56a695eb10685e9e1e8a5da0"
    url "https://github.com/smnkgv/verifique/releases/download/v#{version}/verifique-panel-macos-arm64.dmg"
  end
  on_intel do
    sha256 "bc8190e5ec6e6c2b2ebf27cb0b6acbc3344b9f0198d1b20eca6f8ac48711dc76"
    url "https://github.com/smnkgv/verifique/releases/download/v#{version}/verifique-panel-macos-x64.dmg"
  end

  name "verifique"
  desc "Status-bar panel for the verifique verification queue"
  homepage "https://verifique.ai"

  depends_on formula: "smnkgv/verifique/verifique"

  app "verifique.app"

  caveats <<~EOS
    The panel acts through the verifique command, which this cask installs as well.
    To open the panel at every login, use `verifique panel install` instead, which also
    sets that up.
  EOS
end
