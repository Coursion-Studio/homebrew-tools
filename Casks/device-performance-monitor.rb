cask "device-performance-monitor" do
  version "1.5.5"
  sha256 "0e1843576969bed8d6eb67f36b9dc46ba31e7d77566ced7612e82fece0288589"

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
