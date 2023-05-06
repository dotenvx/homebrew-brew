class DotenvVaultNode < Formula
  desc "node.js dependency for dotenv-vault"
  homepage "https://dotenv.org"
  url "https://nodejs.org/download/release/v16.15.1/node-v16.15.1-darwin-x64.tar.xz"
  version "16.15.1"
  sha256 "bdad616d4d388364a7734cf61d078912c468809ee54c2869edcd813c472ebe3a"
  keg_only "dotenv-vault-node is only used by dotenv-vault (dotenv-org/brew/dotenv-vault)"

  def install
    bin.install buildpath/"bin/node"
  end

  def test
    output = system bin/"node", "version"
    assert output.strip == "v#{version}"
  end
end
