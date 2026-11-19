cask "verifique-panel" do
  version "0.3.7"

  on_arm do
    sha256 "fd4df9db5c2767c50734b75dcc11d0143bd97decbd4a7d3d3b865204dbb2752b"
    url "https://github.com/smnkgv/verifique/releases/download/v#{version}/verifique-panel-macos-arm64.dmg"
  end
  on_intel do
    sha256 "b6667f3223f9674cc2ea53ac5f96dd80e0f84522b07b8a632109113943057c21"
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
