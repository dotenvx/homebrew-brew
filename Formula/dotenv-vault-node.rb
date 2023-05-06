class DotenvVaultNode < Formula
  desc "node.js dependency for dotenv-vault"
  homepage "https://dotenv.org"
  url "https://nodejs.org/download/release/v14.19.0/node-v14.19.0-darwin-x64.tar.xz"
  version "14.19.0"
  sha256 "fe344d2184303c6ca79ac4c9cb1391f15b9c00ad9c82366737f35037301e15f8"
  keg_only "dotenv-vault-node is only used by dotenv-vault (dotenv-org/brew/dotenv-vault), which explicitly requires from Cellar"

  def install
    bin.install buildpath/"bin/node"
  end

  def test
    output = system bin/"node", "version"
    assert output.strip == "v#{version}"
  end
end
