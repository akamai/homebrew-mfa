class Akr < Formula
    desc "Developer CLI for SSH FIDO2 via Akamai MFA (kr/Krypton 2.0)"
    homepage "https://github.com/akamai/homebrew-mfa"
    url "https://github.com/akamai/akr/archive/1.1.2.zip"
    sha256 "f61c3f9321e2158533c579ed2ddc0cb86c9feab6d229738d8e572ebc19d703f3"
  
    bottle do
      root_url "https://github.com/akamai/akr/releases/download/1.1.2"
      sha256 catalina:  "491b43ff0ea79be553ba2e9e9ebce59395ad0c81d5a8c66ca71aebc451738f0a"
      sha256 big_sur: "491b43ff0ea79be553ba2e9e9ebce59395ad0c81d5a8c66ca71aebc451738f0a"
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
