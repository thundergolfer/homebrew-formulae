class SlackifyMarkdown < Formula
  version 'v0.3'
  desc "Convert Markdown into Slack's bastardized Markdown-like formatting"
  homepage "https://github.com/thundergolfer/slackify-markdown"

  if OS.mac?
      url "https://github.com/thundergolfer/slackify-markdown/releases/download/#{version}/slackify-markdown-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "66e17932cc5af20740e0c2fae46cf1ed173b1945cc9789ad793caa6d9bd6bfda"
  elsif OS.linux?
      url "https://github.com/thundergolfer/slackify-markdown/releases/download/#{version}/slackify-markdown-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "00c9f5303673ab426761563422e80b61683331b2b21a21e96103ea5063695387"
  end

  bottle :unneeded

  def install
    bin.install "slackify-markdown"
  end

  test do
		system "#{bin}/slackify-markdown"
	end
end

