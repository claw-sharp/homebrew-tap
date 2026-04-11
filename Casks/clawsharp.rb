cask "clawsharp" do
  version "0.0.6"
  on_arm do
    url "https://github.com/claw-sharp/ClawSharp/releases/download/v0.0.6/ClawSharp_0.0.6_darwin_aarch64.dmg"
    sha256 "6c26800c64e1c631e7a238b3b702a335eae09ba2104a4965027aa7d068cbabba"
  end
  on_intel do
    url "https://github.com/claw-sharp/ClawSharp/releases/download/v0.0.6/ClawSharp_0.0.6_darwin_x86_64.dmg"
    sha256 "0c77f6a6caca8f8c121c408fea2d2c12c126cfc75a32a942edec64bb11fd3c4c"
  end

  name "ClawSharp"
  desc "ClawSharp desktop app"
  homepage "https://github.com/claw-sharp/ClawSharp"
  auto_updates true

  app "ClawSharp.app"

  caveats do
    <<~EOS
      ClawSharp is currently unsigned and not notarized.
      If you see a "damaged" error on macOS, run:

        xattr -cr /Applications/ClawSharp.app

      Then you can open it normally. Future signed releases will remove this requirement.
    EOS
  end
end
