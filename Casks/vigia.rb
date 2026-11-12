cask "vigia" do
  version :latest
  sha256 :no_check

  url "https://pastel-curlew-275.convex.site/update/darwin/Vigia-mac.zip",
      verified: "pastel-curlew-275.convex.site/update/darwin/"
  name "Vigia"
  desc "Records and transcribes interviews, meetings and mentoring sessions"
  homepage "https://nagringa.dev/app/downloads"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Vigia.app"

  zap trash: [
    "~/Library/Application Support/@dng/transcript-tool",
    "~/Library/Application Support/@dng/vigia",
    "~/Library/Caches/dev.nagringa.transcript-tool",
    "~/Library/Caches/dev.nagringa.transcript-tool.ShipIt",
    "~/Library/HTTPStorages/dev.nagringa.transcript-tool",
    "~/Library/Preferences/dev.nagringa.transcript-tool.plist",
  ]
end
