cask "cue" do
  version "0.3.1"
  sha256 "26b990a5cf5e4e4358210bb7540efd422554fabc6ee8b863c6a9a549800e2a26"

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
