class Claw < Formula
  desc "CLI for Clawbreaker AI agent engine"
  homepage "https://clawbreaker.ai"
  version "0.1.0"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/CloudBedrock/clawbreaker-cli/releases/download/v0.1.0/claw-0.1.0-darwin-arm64.tar.gz"
      sha256 "ad5bcdf187a0ece00708732c621f117550120d4a7267e2b8c95d668ee4188a39"
    end
    on_intel do
      url "https://github.com/CloudBedrock/clawbreaker-cli/releases/download/v0.1.0/claw-0.1.0-darwin-amd64.tar.gz"
      sha256 "d207e1d314dfb9438bf6b9c2ccb156e4912e3a73a63b7aa44a390054e5d3b510"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CloudBedrock/clawbreaker-cli/releases/download/v0.1.0/claw-0.1.0-linux-arm64.tar.gz"
      sha256 "9a034b13599b1d397794d92b446b713acfb94a49a392fc6071da1999ba468db4"
    end
    on_intel do
      url "https://github.com/CloudBedrock/clawbreaker-cli/releases/download/v0.1.0/claw-0.1.0-linux-amd64.tar.gz"
      sha256 "525657cdb453f510207e312964d5ce3946ba293fb0bf31e94d1581eb8591ebf3"
    end
  end

  def install
    bin.install "claw"
  end

  test do
    assert_match "claw version", shell_output("#{bin}/claw --version")
  end
end
