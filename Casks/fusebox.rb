cask "fusebox" do
  version "0.4.0"
  sha256 "b1724eabc0a2f795c53e42f3d3cc43bf407dd650fba5399c0cafec965ac82ade"

  url "https://github.com/risingjerry/fusebox/releases/download/v#{version}/Fusebox-#{version}-macos-universal.zip"
  name "Fusebox"
  desc "On-demand MCP servers and Skills for AI agents, with one secret store"
  homepage "https://github.com/risingjerry/fusebox"

  depends_on macos: :sonoma

  app "Fusebox.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Fusebox.app"]
  end

  zap trash: "~/Library/Preferences/com.risingjerry.fusebox.plist"

  caveats <<~EOS
    Fusebox #{version} is ad-hoc signed and not Apple-notarized; this cask
    removes the Gatekeeper quarantine flag after installation. The app ships
    its own copy of the CLI; `brew install risingjerry/tap/fusebox` puts
    `fusebox` on your PATH for agents and terminals.
  EOS
end
