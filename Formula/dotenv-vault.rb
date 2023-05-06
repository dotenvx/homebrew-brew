class DotenvVault < Formula
  desc "Simplify Your Secrets"
  homepage "https://dotenv.org"
  url "https://dotenv-vault-assets.dotenv.org/versions/1.19.1/d156844/dotenv-vault-v1.19.1-d156844-darwin-x64.tar.xz"
  sha256 "571ae2f0e43d896ab1692685a1e13d6f7ce2f5160f64ec951220d219d35233bf"
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
