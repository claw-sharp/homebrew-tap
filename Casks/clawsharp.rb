cask "clawsharp" do
  version "0.0.2"
  on_arm do
    url "https://github.com/claw-sharp/ClawSharp/releases/download/desktop-v0.0.2/ClawSharp_0.0.2_darwin_aarch64.dmg"
    sha256 "8299787e7b9e84463da65df5c092100e4d655316172e760244ff7cdbf80e545d"
  end
  on_intel do
    url "https://github.com/claw-sharp/ClawSharp/releases/download/desktop-v0.0.2/ClawSharp_0.0.2_darwin_x86_64.dmg"
    sha256 "40f468082e77061296875149bc6ed7fe0ad98c6f87033db60137a23264205492"
  end

  name "ClawSharp"
  desc "ClawSharp desktop app"
  homepage "https://github.com/claw-sharp/ClawSharp"
  auto_updates true

  app "ClawSharp.app"

  caveats do
    <<~EOS
      This release is unsigned and not notarized.
      macOS may show Gatekeeper warnings the first time you open ClawSharp.
      Future signed and notarized releases can replace this cask without changing the tap structure.
    EOS
  end
end
