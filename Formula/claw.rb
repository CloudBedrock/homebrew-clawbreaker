class Claw < Formula
  desc "CLI for Clawbreaker AI agent engine"
  homepage "https://clawbreaker.ai"
  version "0.0.1"
  license "Proprietary"

  # Placeholder - will be updated by release workflow
  on_macos do
    on_arm do
      url "https://github.com/CloudBedrock/clawbreaker-cli/releases/download/v0.0.1/claw-0.0.1-darwin-arm64.tar.gz"
      sha256 "placeholder"
    end
    on_intel do
      url "https://github.com/CloudBedrock/clawbreaker-cli/releases/download/v0.0.1/claw-0.0.1-darwin-amd64.tar.gz"
      sha256 "placeholder"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CloudBedrock/clawbreaker-cli/releases/download/v0.0.1/claw-0.0.1-linux-arm64.tar.gz"
      sha256 "placeholder"
    end
    on_intel do
      url "https://github.com/CloudBedrock/clawbreaker-cli/releases/download/v0.0.1/claw-0.0.1-linux-amd64.tar.gz"
      sha256 "placeholder"
    end
  end

  def install
    bin.install "claw"
  end

  test do
    assert_match "claw version", shell_output("#{bin}/claw --version")
  end
end
