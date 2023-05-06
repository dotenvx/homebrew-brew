class DotenvVault < Formula
  desc "Simplify Your Secrets"
  homepage "https://dotenv.org"
  url "https://dotenv-vault-assets.dotenv.org/versions/1.21.0/c114529/dotenv-vault-v1.21.0-c114529-darwin-x64.tar.xz"
  sha256 "4ed4813a2e6693453802e8055d49e12c36f4b1fa6be59d1221a2e43d64c844cd"
  depends_on "dotenv-org/brew/dotenv-vault-node" => "15.14.0"

  def install
    inreplace "bin/dotenv-vault", /^CLIENT_HOME=/, "export DOTENV_VAULT_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    inreplace "bin/dotenv-vault", "\"$DIR/node\"", Formula["dotenv-vault-node"].opt_bin/"node"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dotenv-vault"
  end

  def test
    system bin/"dotenv-vault", "--version"
  end
end
