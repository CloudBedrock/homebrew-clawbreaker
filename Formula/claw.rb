class Claw < Formula
  desc "CLI for Clawbreaker AI agent engine"
  homepage "https://clawbreaker.ai"
  version "0.1.0"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/CloudBedrock/clawbreaker-releases/releases/download/v0.1.0/claw-0.1.0-darwin-arm64.tar.gz"
      sha256 "35bcdfaa3edd099b7663864c314f1ec6bcac6123147631ebefba50fa3b33ac01"
    end
    on_intel do
      url "https://github.com/CloudBedrock/clawbreaker-releases/releases/download/v0.1.0/claw-0.1.0-darwin-amd64.tar.gz"
      sha256 "deff6ab2cd241f7381ba7d33c2465347d9546e5536bc82b78599f7fa130b49aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CloudBedrock/clawbreaker-releases/releases/download/v0.1.0/claw-0.1.0-linux-arm64.tar.gz"
      sha256 "f83a4ab34066d1dd6cf12a7a5140d994830f7268cb3cdad39e94ed92af00eb95"
    end
    on_intel do
      url "https://github.com/CloudBedrock/clawbreaker-releases/releases/download/v0.1.0/claw-0.1.0-linux-amd64.tar.gz"
      sha256 "2c80dbdff00240040bffe9a1f006562269722fedd34d81e394ae271b01dfb8f4"
    end
  end

  def install
    bin.install "claw"
  end

  test do
    assert_match "claw version", shell_output("#{bin}/claw --version")
  end
end
