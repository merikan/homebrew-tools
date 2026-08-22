cask "buzz" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.18"
  sha256 arm: "3fc84fabb61dd108ddb66baef3476edeebbe2d10f5acc2ff575c886979df14f9",
         intel: "21c09a517a3e2c3b7224422ca7fcfca17c4d71321008d9486c1245e0866ce8aa"

  url "https://github.com/block/buzz/releases/download/desktop-v#{version}/Buzz_#{version}_#{arch}.dmg"
  name "Buzz"
  desc "a self-hostable workspace where humans and AI agents collaborate"
  homepage "https://github.com/block/buzz"

  depends_on macos: :sonoma

  app "Buzz.app"

  zap trash: [
    "~/Library/Application Support/xyz.block.buzz.app",
    "~/Library/Preferences/xyz.block.buzz.app.plist",
  ]
end
