#YJImageMgr.podspec
Pod::Spec.new do |s|
  s.name         = "AutoScrollerView"
  s.version      = "1.0.0"
  s.summary      = "自动布局，sollerview顺序添加view简化实现"

  s.homepage     = "https://github.com/Wyajun/YJAutoLayoutView"
  s.license      = 'MIT'
  s.author       = { "YaJun Wang" => "yajunst@163.com" }
  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/Wyajun/YJAutoLayoutView.git", :tag => s.version}
  s.source_files  = 'AutoScrollerView/AutoScollerView/*.{h,m}'
  s.dependency 'Masonry'
  s.requires_arc = true
end