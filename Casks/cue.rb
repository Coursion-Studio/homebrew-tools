cask "cue" do
  version "0.4.0"
  sha256 "82ddececb122163b090610d0e3ad5f7f5714f2d39157bf4c02dc3cc0fa1194ba"

  url "https://github.com/Coursion-Studio/cue/releases/download/v#{version}/Cue-#{version}.dmg",
      verified: "github.com/Coursion-Studio/cue/"
  name "Cue"
  desc "Native terminal with a composer, command cards and AI help"
  homepage "https://coursion-studio.github.io/cue/"

  livecheck do
    url "https://coursion-studio.github.io/cue/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Cue.app"

  zap trash: [
    "~/Library/Application Support/Cue",
    "~/Library/Application Support/com.coursion.cue",
    "~/Library/Caches/com.coursion.cue",
    "~/Library/HTTPStorages/com.coursion.cue",
    "~/Library/HTTPStorages/com.coursion.cue.binarycookies",
    "~/Library/Preferences/com.coursion.cue.plist",
    "~/Library/Saved Application State/com.coursion.cue.savedState",
  ]
end
