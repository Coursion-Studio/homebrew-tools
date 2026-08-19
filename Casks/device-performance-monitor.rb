cask "device-performance-monitor" do
  version "1.2.0"
  sha256 "dd65adb2244015920bb7a015857aedae96efff55bc714c5708a613021a326f6a"

  url "https://github.com/Coursion-Studio/device-performance-monitor/releases/download/v#{version}/DevicePerformanceMonitor-#{version}.dmg",
      verified: "github.com/Coursion-Studio/device-performance-monitor/"
  name "Device Performance Monitor"
  desc "Live memory, CPU, thread and frame-rate monitoring for one app on Android, iOS Simulator or a real device"
  homepage "https://github.com/Coursion-Studio/device-performance-monitor"

  # No livecheck or auto_updates yet: Sparkle is not wired up, so there is no
  # appcast to point at. Adding one now would give Homebrew a feed that 404s.
  depends_on macos: :sonoma

  app "Device Performance Monitor.app"

  zap trash: [
    "~/Library/Preferences/com.coursion.deviceperformancemonitor.plist",
    "~/Library/Caches/com.coursion.deviceperformancemonitor",
    "~/Library/HTTPStorages/com.coursion.deviceperformancemonitor",
    "~/Library/Saved Application State/com.coursion.deviceperformancemonitor.savedState",
    "~/Library/Logs/DevicePerformanceMonitor.log",
  ]
end
