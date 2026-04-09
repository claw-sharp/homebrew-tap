cask "clawsharp" do
  version "0.0.4"
  on_arm do
    url "https://github.com/claw-sharp/ClawSharp/releases/download/desktop-v0.0.4/ClawSharp_0.0.4_darwin_aarch64.dmg"
    sha256 "390e2ecbc3ccf39cceb6882f23ebe0c14df5e65a149683265d2b953230722d92"
  end
  on_intel do
    url "https://github.com/claw-sharp/ClawSharp/releases/download/desktop-v0.0.4/ClawSharp_0.0.4_darwin_x86_64.dmg"
    sha256 "0d09f4d0b2cb1b5f545f01995f66f1186a8b4fcf140a03262d6ab81023886850"
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
