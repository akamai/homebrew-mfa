class Akr < Formula
    desc "Developer CLI for SSH FIDO2 via Akamai MFA (kr/Krypton 2.0)"
    homepage "https://github.com/akamai/homebrew-mfa"
    url "https://github.com/akamai/akr/archive/1.2.3.zip"
    sha256 "2e1a4fc04a424411b11b76ed5fb31f2d391d87066f8a7be3426f0f190d909436"

    bottle do
      root_url "https://github.com/akamai/akr/releases/download/1.2.3"
      sha256 cellar: :any_skip_relocation, arm64_sequoia:  "002557d7a9fbb6d42bf1102fe59427d984c2c9a50937df9eb71dc2654a0864c9"
      sha256 cellar: :any_skip_relocation, arm64_sonoma:   "002557d7a9fbb6d42bf1102fe59427d984c2c9a50937df9eb71dc2654a0864c9"
      sha256 cellar: :any_skip_relocation, arm64_ventura:  "002557d7a9fbb6d42bf1102fe59427d984c2c9a50937df9eb71dc2654a0864c9"
      sha256 cellar: :any_skip_relocation, arm64_monterey: "002557d7a9fbb6d42bf1102fe59427d984c2c9a50937df9eb71dc2654a0864c9"
      sha256 cellar: :any_skip_relocation, arm64_big_sur:  "002557d7a9fbb6d42bf1102fe59427d984c2c9a50937df9eb71dc2654a0864c9"
    end

    depends_on "rust" => :build

    def install
        system "cargo", "install", "--bin", "akr", "--locked", "--root", prefix.to_s, "--path", "./crates/kr"
    end

    test do
        system "#{bin}/tunnelto", "setup"
    end

    def caveats
        "akr is now installed!\nRun `akr pair --setup` to pair with the Akamai MFA app."
    end
  end
