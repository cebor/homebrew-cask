cask "clickcharts" do
  version "5.46"
  sha256 :no_check

  url "https://www.nchsoftware.com/chart/clickchartspmaci.zip",
      user_agent: :fake
  name "ClickCharts"
  homepage "https://www.nchsoftware.com/"

  app "ClickCharts.app"
end
