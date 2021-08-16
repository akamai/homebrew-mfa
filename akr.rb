class Akr < Formula
    desc "Developer CLI for SSH FIDO2 via Akamai MFA (kr/Krypton 2.0)"
    homepage "https://github.com/akamai/homebrew-mfa"
    url "https://github.com/akamai/akr/archive/1.0.zip"
    sha256 "b085c70bab5bda8f23e9d9745c6f3bc4b6c1e12a473b257dc6f6948b21d25162"
  
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
