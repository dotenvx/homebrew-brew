class DotenvVault < Formula
  desc "Simplify Your Secrets"
  homepage "https://dotenv.org"
  url "https://dotenv-vault-assets.dotenv.org/versions/1.23.3/88646dc/dotenv-vault-v1.23.3-88646dc-darwin-arm64.tar.xz"
  sha256 "67a682027ee8f75002a4410abcbb9f34e4f62f6912d078574ce2af43545d2ff0"
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
