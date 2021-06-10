class Akr < Formula
    desc "Developer CLI for SSH FIDO2 via Akamai MFA (kr/Krypton 2.0)"
    homepage "https://github.com/akamai/homebrew-mfa"
    url "https://github.com/akamai/homebrew-mfa/archive/1.0.zip"

    bottle do
      root_url "https://github.com/akamai/homebrew-mfa/releases/download/1.0"
      sha256 catalina:  "9647e1f1be7f80702d8df4c2f16f4970c363cc3dd23fc1e89899feeb62c5245e"
      sha256 big_sur: "9647e1f1be7f80702d8df4c2f16f4970c363cc3dd23fc1e89899feeb62c5245e"
    end

    test do
      system "which akr && akr setup"
    end

    def caveats
        "akr is now installed!\nRun `akr pair --setup` to pair with the Akamai MFA app."
    end
  end