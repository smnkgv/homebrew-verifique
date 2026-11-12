cask "verifique-panel" do
  version "0.3.4"

  on_arm do
    sha256 "9f62b26456d383b6fba9c449d0ad6160ed4503f8aabfe37fd27746d15fe73634"
    url "https://github.com/smnkgv/verifique/releases/download/v#{version}/verifique-panel-macos-arm64.dmg"
  end
  on_intel do
    sha256 "6b9e9702467532cebde12544639f7908d0aaa0b3fbec645bd94f2febf8386fd7"
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
