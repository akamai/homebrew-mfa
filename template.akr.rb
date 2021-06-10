class Akr < Formula
    desc "Developer CLI for SSH FIDO2 via Akamai MFA (kr/Krypton 2.0)"
    homepage "https://github.com/akamai/homebrew-mfa"

    bottle do
      root_url "https://github.com/akamai/homebrew-mfa/releases/download/_VERSION_"
      sha256 catalina:  "_BIN_SHA2_"
      sha256 big_sur: "_BIN_SHA2_"
    end

    test do
      system "#{bin}/akr", "setup"
    end

    def caveats
        "akr is now installed!\nRun `akr pair --setup` to pair with the Akamai MFA app."
    end
  end