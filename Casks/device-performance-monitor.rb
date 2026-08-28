cask "device-performance-monitor" do
  version "1.4.0"
  sha256 "add20332a11cc3e1319ad2483297439564c6fd7f929151a3c157bc28e3b1c204"

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
