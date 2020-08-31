class Badger < Formula
  desc "Badger is a command-line tool that adds labels to your app icon"
  homepage "https://github.com/hex/Badger"
  url "https://github.com/hex/badger/releases/download/v2020.8.26/badger-osx-x64.zip"
  version "2020.8.26"
  sha256 "c8d9839716a0d2c89e6fc3b5a02001e096f26bcacbd28ed65915dbaa9ce38377"
  license "MIT"

  def install
    bin.install Dir["*"]
  end
end
