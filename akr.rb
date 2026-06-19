class Akr < Formula
    desc "Developer CLI for SSH FIDO2 via Akamai MFA (kr/Krypton 2.0)"
    homepage "https://github.com/akamai/homebrew-mfa"
    url "https://github.com/akamai/akr/archive/1.2.3-test.zip"
    sha256 "1ae1682f75f55926bc4c80926c5ebb31f089f59d29937d7aef9a01ab2b08dae5"

    bottle do
      root_url "https://github.com/akamai/akr/releases/download/1.2.3-test"
      sha256 cellar: :any_skip_relocation, arm64_sequoia:  "e04c54f2e69b0b5dd5960b93f9b60bc35dcea68a89fe1023a0a9a722838db530"
      sha256 cellar: :any_skip_relocation, arm64_sonoma:   "e04c54f2e69b0b5dd5960b93f9b60bc35dcea68a89fe1023a0a9a722838db530"
      sha256 cellar: :any_skip_relocation, arm64_ventura:  "e04c54f2e69b0b5dd5960b93f9b60bc35dcea68a89fe1023a0a9a722838db530"
      sha256 cellar: :any_skip_relocation, arm64_monterey: "e04c54f2e69b0b5dd5960b93f9b60bc35dcea68a89fe1023a0a9a722838db530"
      sha256 cellar: :any_skip_relocation, arm64_big_sur:  "e04c54f2e69b0b5dd5960b93f9b60bc35dcea68a89fe1023a0a9a722838db530"
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
