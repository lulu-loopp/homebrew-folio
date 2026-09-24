cask "folio" do
  version "0.4.4"
  sha256 "ac51d0ec08e54855db1e0dd4eefe5d64fd9def924c3f9507c4f54f275d65716e"

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

