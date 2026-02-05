class Cb < Formula
  desc "CLI for Clawbreaker AI agent engine"
  homepage "https://clawbreaker.ai"
  version "0.0.1"
  license "Proprietary"

  # Placeholder - updated by release workflow
  on_macos do
    on_arm do
      url "https://github.com/CloudBedrock/clawbreaker-cli/releases/download/v0.0.1/cb-0.0.1-darwin-arm64.tar.gz"
      sha256 "placeholder"
    end
    on_intel do
      url "https://github.com/CloudBedrock/clawbreaker-cli/releases/download/v0.0.1/cb-0.0.1-darwin-amd64.tar.gz"
      sha256 "placeholder"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CloudBedrock/clawbreaker-cli/releases/download/v0.0.1/cb-0.0.1-linux-arm64.tar.gz"
      sha256 "placeholder"
    end
    on_intel do
      url "https://github.com/CloudBedrock/clawbreaker-cli/releases/download/v0.0.1/cb-0.0.1-linux-amd64.tar.gz"
      sha256 "placeholder"
    end
  end

  def install
    bin.install "cb"
  end

  test do
    assert_match "Clawbreaker", shell_output("#{bin}/cb --help")
  end
end
