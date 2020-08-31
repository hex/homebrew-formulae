class Badger < Formula
  desc "Badger is a command-line tool that adds labels to your app icon"
  homepage "https://github.com/hex/Badger"
  url "https://github.com/hex/Badger/releases/download/v2020.8.3/Badger-osx-x64.zip"
  version "2020.8.3"
  sha256 "d40d67752e6424e2555008b7a6b39d289669974607305b599bf94f275c9f1af1"
  license "MIT"

  def install
    bin.install Dir["*"]
  end
end
