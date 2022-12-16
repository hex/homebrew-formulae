class Badger < Formula
  arch arm: "osx-arm64", intel: "osx-x64"
  version "2022.12.2"
  desc "Command-line tool that adds labels to your app icon"
  homepage "https://github.com/hex/Badger"
  url "https://github.com/hex/badger/releases/download/v#{version}/badger-#{arch}.zip"
  sha256 arm:   "0965597fb5c5bd252407afcec7daae8b4460a6676ffc691eaacc7dc7e7de1ec9",
         intel: "af6836783cb038e300123737e0cbbf01ab7ae2f6574317d11e17dcbc24ed9ae2"
  license "MIT"

  def install
    bin.install Dir["*"]
  end

  test do
    system "#{bin}/badger", "--version"
  end
end
