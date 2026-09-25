cask "folio" do
  version "0.4.5"
  sha256 "7052892ef8343085e4c7be8b46392089abc55956ade37458c9ad686e2ef79b53"

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

