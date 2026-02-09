class Cb < Formula
  desc "CLI for Clawbreaker AI agent engine"
  homepage "https://clawbreaker.ai"
  version "0.3.1"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/CloudBedrock/clawbreaker-releases/releases/download/v0.3.1/cb-0.3.1-darwin-arm64.tar.gz"
      sha256 "c0259eb9c16d6c4e1306b9dd50ea3be093fb7538f0a5639a0f2fdc978540bd79"
    end
    on_intel do
      url "https://github.com/CloudBedrock/clawbreaker-releases/releases/download/v0.3.1/cb-0.3.1-darwin-amd64.tar.gz"
      sha256 "e5e1e47544c1f22217c27025445dfbea727d5093bbafb32594fe1b0c7fce0cfc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CloudBedrock/clawbreaker-releases/releases/download/v0.3.1/cb-0.3.1-linux-arm64.tar.gz"
      sha256 "aec2af6aa85503545bb8425324af87c2b0ca7f0efea1ca7e2658af06573254cf"
    end
    on_intel do
      url "https://github.com/CloudBedrock/clawbreaker-releases/releases/download/v0.3.1/cb-0.3.1-linux-amd64.tar.gz"
      sha256 "ef01a46d25f59c6653b4af062d48fb86ebbed326fffa3793c298ff0638fb2a7a"
    end
  end

  def install
    bin.install "cb"
  end

  test do
    assert_match "cb version", shell_output("\#{bin}/cb --version")
  end
end
