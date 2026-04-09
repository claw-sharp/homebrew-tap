cask "clawsharp" do
  version "0.0.3"
  on_arm do
    url "https://github.com/claw-sharp/ClawSharp/releases/download/desktop-v0.0.3/ClawSharp_0.0.3_darwin_aarch64.dmg"
    sha256 "d08e9a50ad1805ee180618c677579eee3b5f795782efa4f9767583c4a8ddd4d1"
  end
  on_intel do
    url "https://github.com/claw-sharp/ClawSharp/releases/download/desktop-v0.0.3/ClawSharp_0.0.3_darwin_x86_64.dmg"
    sha256 "bc682bfd2cae9de88a8610aa9637df98bb133043eea96481d4cb419d59fce24f"
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
