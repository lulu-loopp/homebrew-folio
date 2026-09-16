cask "folio" do
  version "0.4.1"
  sha256 "5e01fca25218abb30ec94f04a915edfa01c3c8754cc62ecf806f9806e03db20d"

  url "https://github.com/lulu-loopp/folio-terminal/releases/download/v#{version}-preview/Folio-#{version}-macos-arm64.dmg"
  name "Folio"
  desc "Terminal that typesets formulas where a command prints them, with files previewed beside the prompt"
  homepage "https://github.com/lulu-loopp/folio-terminal"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Folio.app"

  zap trash: [
    "~/Library/Application Support/Folio",
  ]
end
