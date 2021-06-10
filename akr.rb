class Akr < Formula
    desc "Developer CLI for SSH FIDO2 via Akamai MFA (kr/Krypton 2.0)"
    homepage "https://github.com/akamai/homebrew-mfa"
    url "https://github.com/akamai/homebrew-mfa/archive/1.0.zip"

    bottle do
      root_url "https://github.com/akamai/homebrew-mfa/releases/download/1.0"
      sha256 catalina:  "96d4cfda1a17b21c11a26994d2fef4aadd0c3f36edd76fd45dae72e46193a096"
      sha256 big_sur: "96d4cfda1a17b21c11a26994d2fef4aadd0c3f36edd76fd45dae72e46193a096"
    end

    test do
      system "which akr && akr setup"
    end

    def caveats
        "akr is now installed!\nRun `akr pair --setup` to pair with the Akamai MFA app."
    end
  end