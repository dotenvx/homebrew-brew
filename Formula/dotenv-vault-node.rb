class DotenvVaultNode < Formula
  desc "node.js dependency for dotenv-vault"
  homepage "https://dotenv.org"
  url "https://nodejs.org/download/release/v15.14.0/node-v15.14.0-darwin-x64.tar.xz"
  version "15.14.0"
  sha256 "f355aeda5049fdbac4acca23a7bb6f66e145a179a52bd2489e3f76fbe0feb161"
  keg_only "dotenv-vault-node is only used by dotenv-vault (dotenv-org/brew/dotenv-vault)"

  def install
    bin.install buildpath/"bin/node"
  end

  def test
    output = system bin/"node", "version"
    assert output.strip == "v#{version}"
  end
end
