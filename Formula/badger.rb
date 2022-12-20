class Badger < Formula
  version "2022.12.2"
  desc "Command-line tool that adds labels to your app icon"
  homepage "https://github.com/hex/Badger"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hex/badger/releases/download/v2022.12.5/badger-osx-x64.zip"
      sha256 "5cb06d39c62468376cb1bdd6ec072d19e0c80416419f8e9819599bc9fa387e19"
    end
    if Hardware::CPU.arm?
      url "https://github.com/hex/badger/releases/download/v2022.12.5/badger-osx-arm64.zip"
      sha256 "088208fcd00746726d9b4396893ce1a15e81fa6ef1d46b3c4a2eb1a44af636be"
    end
  end

  on_linux do
    url "https://github.com/hex/badger/releases/download/v2022.12.5/badger-linux-x64.zip"
    sha256 "d2ce09700f5b204927b41f6ee4a236490f50fe4525dc4c391cf8408eadb100be"
  end

  def install
    bin.install Dir["*"]
  end

  test do
    system "#{bin}/badger", "--version"
  end
end
