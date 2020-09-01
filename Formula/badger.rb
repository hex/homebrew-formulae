class Badger < Formula
  desc "Command-line tool that adds labels to your app icon"
  homepage "https://github.com/hex/Badger"
  url "https://github.com/hex/badger/releases/download/v2020.9.0/badger-osx-x64.zip"
  version "2020.9.0"
  sha256 "fbbee62de654f157614ff90d3970aa60b8511344ac6f6e641cbde5a05c085e62"
  license "MIT"

  def install
    bin.install Dir["*"]
  end

  test do
    system "#{bin}/badger", "--version"
  end
end
