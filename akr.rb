class Akr < Formula
    desc "Developer CLI for SSH FIDO2 via Akamai MFA (kr/Krypton 2.0)"
    homepage "https://github.com/akamai/homebrew-mfa"
    url "https://github.com/akamai/akr/archive/1.1.0.zip"
    sha256 "fc8ed7c94b8cc5e9c61f5bcef5656c4f1da3319b8342bd456b81d010b7ff2247"
  
    bottle do
      root_url "https://github.com/akamai/akr/releases/download/1.1.0"
      sha256 catalina:  "ab9659bf8b8d7ea20470408222868e65548b646626123585c64fd1fa5fdf960a"
      sha256 big_sur: "ab9659bf8b8d7ea20470408222868e65548b646626123585c64fd1fa5fdf960a"
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
