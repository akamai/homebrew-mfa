class Akr < Formula
    desc "Developer CLI for SSH FIDO2 via Akamai MFA (kr/Krypton 2.0)"
    homepage "https://github.com/akamai/homebrew-mfa"
    url "https://github.com/akamai/homebrew-mfa/archive/1.1.zip"
    sha256 "bb6ed6e0241a59d9799a42b9d1a6e29681b2ced10d04a3c476ef9b2cfd13f020"
  
    bottle do
      root_url "https://github.com/akamai/homebrew-mfa/releases/download/1.1"
      sha256 catalina:  "03ee530b8204dcd06b9ae2d1b9a44c5e5dea64ee16992de0faca444e803131ed"
      sha256 big_sur: "03ee530b8204dcd06b9ae2d1b9a44c5e5dea64ee16992de0faca444e803131ed"
    end

    test do
      system "which akr && akr setup"
    end

    def caveats
        "akr is now installed!\nRun `akr pair --setup` to pair with the Akamai MFA app."
    end
  end
