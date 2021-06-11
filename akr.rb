class Akr < Formula
    desc "Developer CLI for SSH FIDO2 via Akamai MFA (kr/Krypton 2.0)"
    homepage "https://github.com/akamai/homebrew-mfa"
    url "https://github.com/akamai/homebrew-mfa/archive/1.0.zip"
    sha256 "075ad77116bb10f8bf96cbe3d18b1547d6c381cf6f76178e37904d6a79f0a5f3"
  
    bottle do
      root_url "https://github.com/akamai/homebrew-mfa/releases/download/1.0"
      sha256 catalina:  "45081289f0bd25fa6fe7e2bbb2bd28b91e6737cba73523e4ede3dc30fe64c639"
      sha256 big_sur: "45081289f0bd25fa6fe7e2bbb2bd28b91e6737cba73523e4ede3dc30fe64c639"
    end

    test do
      system "which akr && akr setup"
    end

    def caveats
        "akr is now installed!\nRun `akr pair --setup` to pair with the Akamai MFA app."
    end
  end
