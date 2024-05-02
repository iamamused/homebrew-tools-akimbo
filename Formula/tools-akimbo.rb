# https://github.com/syhw/homebrew/blob/master/Library/Contributions/example-formula.rb

class ToolsAkimbo < Formula
    desc "CLI package of useful developer tools"
    homepage "https://jeffreysambells.com"
    url "https://github.com/iamamused/homebrew-tools-akimbo/raw/1.0.0/phar/tools-akimbo.phar"

    # get sha: shasum -a 256 tools-akimbo.phar
    sha256 "${SHA}"

    depends_on "php"

    def install
        bin.install "tools-akimbo.phar" => "tools-akimbo"
    end

    def caveats; <<-EOS
        You need to create a config file.
	Run: 
	tools-akimbo worklogs:config
    EOS
    end
end
