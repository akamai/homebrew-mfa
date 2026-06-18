class Akr < Formula
    desc "Developer CLI for SSH FIDO2 via Akamai MFA (kr/Krypton 2.0)"
    homepage "https://github.com/akamai/homebrew-mfa"
    url "https://github.com/akamai/akr/archive/1.2.1.zip"
    sha256 "865a3ff7495ea6823afc5097755ab92a8cc67425d8df761bdb955170b4429c93"
  
    bottle do
      root_url "https://github.com/akamai/akr/releases/download/1.2.1"
      sha256 catalina:  "9328eafe702bda923495800a8fb812a8960c348423c6064ceee035e8cd63e29b"
      sha256 big_sur: "9328eafe702bda923495800a8fb812a8960c348423c6064ceee035e8cd63e29b"
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
