cask "folio" do
  version "0.4.2"
  sha256 "cf39c61430e36a1c80d8744fec9fb0eaa8b68df91c1780cb737e4e425a750dd9"

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

