class Cb < Formula
  desc "CLI for Clawbreaker AI agent engine"
  homepage "https://clawbreaker.ai"
  version "0.1.0"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/CloudBedrock/clawbreaker-releases/releases/download/v0.1.0/cb-0.1.0-darwin-arm64.tar.gz"
      sha256 "020985c243e331736a0b5e5f8c31de98c4bff57497efbec82d4dea0f245f9896"
    end
    on_intel do
      url "https://github.com/CloudBedrock/clawbreaker-releases/releases/download/v0.1.0/cb-0.1.0-darwin-amd64.tar.gz"
      sha256 "a7e16c134b19db3cd6e7ba175ae08668e9df8fe9f7992b17c20d0fcfa1e3a4bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CloudBedrock/clawbreaker-releases/releases/download/v0.1.0/cb-0.1.0-linux-arm64.tar.gz"
      sha256 "450934690173b98812f923f0074decde67ac5ea6ad572d3e30fbc05f875f38cb"
    end
    on_intel do
      url "https://github.com/CloudBedrock/clawbreaker-releases/releases/download/v0.1.0/cb-0.1.0-linux-amd64.tar.gz"
      sha256 "cc38febad7396d2d1b7ea1c3a0f90cbbbe57dcdc7bce0abd7f7f9e7076b254ee"
    end
  end

  def install
    bin.install "cb"
  end

  test do
    assert_match "cb version", shell_output("#{bin}/cb --version")
  end
end
