class Badger < Formula
  desc "Command-line tool that adds labels to your app icon"
  homepage "https://github.com/hex/Badger"
  url "https://github.com/hex/badger/releases/download/v2020.9.2/badger-osx-x64.zip"
  version "2020.9.2"
  sha256 "d9d1ee20bf2b2d4b9dc27c7d065832254e5aa46853a64d0c35911149a596f5e7"
  license "MIT"

  def install
    bin.install Dir["*"]
  end

  test do
    system "#{bin}/badger", "--version"
  end
end
