# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Dotenvx < Formula
  desc "Better dotenv–from the creator of `dotenv`"
  homepage "https://github.com/dotenvx/dotenvx"
  url "https://github.com/dotenvx/dotenvx/archive/refs/tags/v1.22.0.tar.gz"
  sha256 "2b3469496fbebf89d7a389528253b3eec70ee1fb41829d7015611a9769ba160d"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.22.0/dotenvx-1.22.0-darwin-amd64.tar.gz"
      sha256 "a3bdc1f9ceaf6f9627adb3ae96b64bd70f53bc2bc28b2d931746914da015dd7e"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.22.0/dotenvx-1.22.0-darwin-arm64.tar.gz"
      sha256 "6fe70e221d4b1876ea37f1c40e7cd10580ccf74615e8bb117f33aabd44e488f1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.22.0/dotenvx-1.22.0-linux-amd64.tar.gz"
      sha256 "cdd5e14c514f76c9b213d2e4294ad995c312bcc0e8eb9bcbac2da5af1730e5a4"
    end

    on_arm do
      url "https://github.com/dotenvx/dotenvx/releases/download/v1.22.0/dotenvx-1.22.0-linux-arm64.tar.gz"
      sha256 "3c73a4a2729007a271b9999c22a7b94a7a1f4795de6051283783bf3bff60ebf5"
    end
  end

  def install
    bin.install "dotenvx"
bin.install_symlink "dotenvx" => "git-dotenvx"
  end

  test do
    system bin/"dotenvx", "--version"
  end
end
