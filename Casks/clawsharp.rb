cask "clawsharp" do
  version "0.0.5"
  on_arm do
    url "https://github.com/claw-sharp/ClawSharp/releases/download/desktop-v0.0.5/ClawSharp_0.0.5_darwin_aarch64.dmg"
    sha256 "f4c2d225b5195216d23c8fa646b2850e2c283191a027d178547cbef6494ee4b3"
  end
  on_intel do
    url "https://github.com/claw-sharp/ClawSharp/releases/download/desktop-v0.0.5/ClawSharp_0.0.5_darwin_x86_64.dmg"
    sha256 "380759275a72e674bae25bad51cec95f51e9a8e5ccaea09c38d2891600be39ff"
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
