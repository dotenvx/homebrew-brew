class DotenvVault < Formula
  desc "Simplify Your Secrets"
  homepage "https://dotenv.org"
  url "https://dotenv-vault-assets.dotenv.org/versions/1.22.0/ff7a52c/dotenv-vault-v1.22.0-ff7a52c-darwin-arm64.tar.xz"
  sha256 "251e33a3cf4c0bb76b063625fb0e478e76d9f2ade684bc3800a31529d993d56a"
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
