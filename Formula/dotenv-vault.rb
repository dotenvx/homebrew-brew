class DotenvVault < Formula
  desc "Simplify Your Secrets"
  homepage "https://dotenv.org"
  url "https://dotenv-vault-assets.dotenv.org/versions/1.20.0/7b354f9/dotenv-vault-v1.20.0-7b354f9-darwin-x64.tar.xz"
  sha256 "cc70f1a66704936966b1c02bccadcc54e2d23a93103ea814a589a53d7566de27"
  depends_on "dotenv-org/brew/dotenv-vault-node" => "14.19.0"

  def install
    inreplace "bin/dotenv-vault", /^CLIENT_HOME=/, "export DOTENV_VAULT_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    inreplace "bin/dotenv-vault", "\"$DIR/node\"", Formula["dotenv-vault-node"].opt_bin/"node"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/dotenv-vault"
  end

  test do
    system bin/"dotenv-vault", "version"
  end
end
