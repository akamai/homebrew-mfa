class Akr < Formula
    desc "Developer CLI for SSH FIDO2 via Akamai MFA (kr/Krypton 2.0)"
    homepage "https://github.com/akamai/homebrew-mfa"
    url "https://github.com/akamai/akr/archive/1.1.1.zip"
    sha256 "13a33c6613efb38bc0d724cb4fce9c6da63dc9d8ddbb0f6168c621e108c3867b"
  
    bottle do
      root_url "https://github.com/akamai/akr/releases/download/1.1.1"
      sha256 catalina:  "dde1300b25f300eb6732a78312b7fc863add25a835b71e8d9a92de7b9ee9632a"
      sha256 big_sur: "dde1300b25f300eb6732a78312b7fc863add25a835b71e8d9a92de7b9ee9632a"
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
