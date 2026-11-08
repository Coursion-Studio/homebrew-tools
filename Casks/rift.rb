cask "rift" do
  # version + sha256 are bumped automatically by the macos-release pipeline on
  # each release (it sed-rewrites both lines). The all-zero sha is a placeholder
  # until Rift's first release ships; `brew install` activates with that release.
  version "1.2.2"
  sha256 "f72a481333fa0d11c86c5108dc67f34dc4dfdfd41f08297c7f154849510d7c40"

  url "https://github.com/Coursion-Studio/rift-website/releases/download/v#{version}/Rift-#{version}.dmg",
      verified: "github.com/Coursion-Studio/rift-website/"
  name "Rift"
  desc "Native macOS cockpit to review, blame, and verify AI-generated code"
  homepage "https://rift.coursion.studio/"

  livecheck do
    url "https://rift.coursion.studio/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Rift.app"

  zap trash: [
    "~/Library/Application Support/com.coursion.rift",
    "~/Library/Application Support/Rift",
    "~/Library/Preferences/com.coursion.rift.plist",
    "~/Library/Caches/com.coursion.rift",
    "~/Library/HTTPStorages/com.coursion.rift",
    "~/Library/HTTPStorages/com.coursion.rift.binarycookies",
    "~/Library/Saved Application State/com.coursion.rift.savedState",
  ]
end
