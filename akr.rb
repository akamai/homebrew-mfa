class Akr < Formula
    desc "Developer CLI for SSH FIDO2 via Akamai MFA (kr/Krypton 2.0)"
    homepage "https://github.com/akamai/homebrew-mfa"
    url "https://github.com/akamai/akr/archive/1.0.zip"
    sha256 "2b1b21733fec92480423a1e090dcc92d86e0fdff1627cf8faeb341ac829080ef"
  
    bottle do
      root_url "https://github.com/akamai/akr/releases/download/1.0"
      sha256 catalina:  "ede159e22c89b762f64e6f781ff2312c42b6699e919802f00cb84980e433b034"
      sha256 big_sur: "ede159e22c89b762f64e6f781ff2312c42b6699e919802f00cb84980e433b034"
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
