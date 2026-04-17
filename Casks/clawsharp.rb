cask "clawsharp" do
  version "0.0.7"
  on_arm do
    url "https://github.com/claw-sharp/ClawSharp/releases/download/desktop-v0.0.7/ClawSharp_0.0.7_darwin_aarch64.dmg"
    sha256 "db4ad7e2fb57dcd07ed510fc9e8900397fb6ef1ac82d33dc50c965c1deed7c8e"
  end
  on_intel do
    url "https://github.com/claw-sharp/ClawSharp/releases/download/desktop-v0.0.7/ClawSharp_0.0.7_darwin_x86_64.dmg"
    sha256 "cf720fefda8fdbee7eda5136c1a852f5af08fedba94e410ad15913e818f300fe"
  end

  name "ClawSharp"
  desc "ClawSharp desktop app"
  homepage "https://github.com/claw-sharp/ClawSharp"
  auto_updates true

  app "ClawSharp.app"

  caveats do
    <<~EOS
      ClawSharp is currently unsigned and not notarized.
      For the smoothest first install with Homebrew, use:

        brew install --cask --no-quarantine claw-sharp/tap/clawsharp

      If Homebrew reports that '/Applications/ClawSharp.app' is missing during cleanup, reset the cask state with:

        brew uninstall --cask --force clawsharp

      If you see a "damaged" error on macOS, run:

        xattr -dr com.apple.quarantine /Applications/ClawSharp.app

      Then you can open it normally. Future signed releases will remove this requirement.
    EOS
  end
end
