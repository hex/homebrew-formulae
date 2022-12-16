class Badger < Formula
  version "2022.12.2"
  desc "Command-line tool that adds labels to your app icon"
  homepage "https://github.com/hex/Badger"

  on_macos
    if Hardware::CPU.intel?
      url "https://github.com/hex/badger/releases/download/v2022.12.2/badger-osx-x64.zip"
      sha256 "af6836783cb038e300123737e0cbbf01ab7ae2f6574317d11e17dcbc24ed9ae2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/hex/badger/releases/download/v2022.12.2/badger-osx-arm64.zip"
      sha256 "0965597fb5c5bd252407afcec7daae8b4460a6676ffc691eaacc7dc7e7de1ec9"
    end
  end       

  on_linux do
    url "https://github.com/hex/badger/releases/download/v2022.12.2/badger-linux-x64.zip"
    sha256 "272cc19043f01f18047c4f88afb1f99e11b6bf00523433af3d9f3bc1f0849379"
  end

  license "MIT"

  def install
    bin.install Dir["*"]
  end

  test do
    system "#{bin}/badger", "--version"
  end
end
