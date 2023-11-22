
# Flutter集成UniMp小程序（vera_unimp）
# 插件开发环境
Flutter 3.10.6 • channel stable • https://github.com/flutter/flutter.git
Framework • revision f468f3366c (4 months ago) • 2023-07-12 15:19:05 -0700
Engine • revision cdbeda788a
Tools • Dart 3.0.6 • DevTools 2.23.1

# 集成计划

### 功能模块与 API 对应关系

| 功能模块       | 5+APP项目                | uni-app项目  | 是否已集成 
| :-------                | :-------                | :-------        | :-------                
| Audio(音频)    | [plus.audio](https://www.html5plus.org/doc/zh_cn/audio.html)    | https://uniapp.dcloud.io/api/media/record-manager https://uniapp.dcloud.io/api/media/audio-context | 是
| Audio(MP3格式音频支持库)    | [plus.audio](https://www.html5plus.org/doc/zh_cn/audio.html)    |  | 是
| Barcode(二维码)         | [plus.barcode](https://www.html5plus.org/doc/zh_cn/barcode.html) | https://uniapp.dcloud.io/api/system/barcode  | 是
| Bluetooth(低功耗蓝牙)          | [plus.bluetooth](https://www.html5plus.org/doc/zh_cn/bluetooth.html) | https://uniapp.dcloud.io/api/system/bluetooth  | 是
| Camera(摄像头)           | [plus.camera](https://www.html5plus.org/doc/zh_cn/camera.html)     |  | 是
| Contacts(通讯录)          | [plus.contacts](https://www.html5plus.org/doc/zh_cn/contacts.html) |  | 是
| Device(设备信息)           | [plus.device](https://www.html5plus.org/doc/zh_cn/device.html)   | https://uniapp.dcloud.io/api/system/info | 是
| Downloader(文件下载)      | [plus.downloader](https://www.html5plus.org/doc/zh_cn/downloader.html) | https://uniapp.dcloud.io/api/request/network-file?id=downloadfile | 是
| Fingerprint(指纹识别)     | [plus.fingerprint](https://www.html5plus.org/doc/zh_cn/fingerprint.html) | https://uniapp.dcloud.io/api/other/authentication 
| Geolocation(基础定位库)   | [plus.geolocation](https://www.html5plus.org/doc/zh_cn/geolocation.html) | https://uniapp.dcloud.io/api/location/location | 是
| Geolocation(高德定位)    	| [plus.geolocation](https://www.html5plus.org/doc/zh_cn/geolocation.html) | https://uniapp.dcloud.io/api/location/location | 是
| Geolocation(系统定位)    | [plus.geolocation](https://www.html5plus.org/doc/zh_cn/geolocation.html) | https://uniapp.dcloud.io/api/location/location | 是
| iBeacon            | [plus.ibeacon](https://www.html5plus.org/doc/zh_cn/ibeacon.html)     | https://uniapp.dcloud.io/api/system/ibeacon | 是
| IO(文件系统)           | [plus.io](https://www.html5plus.org/doc/zh_cn/io.html)               | https://uniapp.dcloud.io/api/file/file | 是
| LivePusher(直播推流)      | [plus.video.LivePusher](https://www.html5plus.org/doc/zh_cn/video.html#plus.video.LivePusher) | https://uniapp.dcloud.io/api/media/live-player-context 
| Maps(高德地图)           | [plus.map](https://www.html5plus.org/doc/zh_cn/maps.html)            | https://uniapp.dcloud.io/api/location/map | 是
| Messaging(短彩邮件消息)          | [plus.messaging](https://www.html5plus.org/doc/zh_cn/messaging.html) || 是
| Navigator(运行环境信息)        | [plus.navigator](https://www.html5plus.org/doc/zh_cn/navigator.html) | https://uniapp.dcloud.io/api/system/info | 是
| Oauth(登录基础库)             | [plus.oauth](https://www.html5plus.org/doc/zh_cn/oauth.html)        | https://uniapp.dcloud.io/api/plugins/login | 是
| Oauth(小米登录)        | [plus.oauth](https://www.html5plus.org/doc/zh_cn/oauth.html)        | https://uniapp.dcloud.io/api/plugins/login 
| Oauth(QQ登录)                 | [plus.oauth](https://www.html5plus.org/doc/zh_cn/oauth.html)        | https://uniapp.dcloud.io/api/plugins/login 
| Oauth(新浪微博登录)         | [plus.oauth](https://www.html5plus.org/doc/zh_cn/oauth.html)        | https://uniapp.dcloud.io/api/plugins/login 
| Oauth(微信登录)          | [plus.oauth](https://www.html5plus.org/doc/zh_cn/oauth.html)         | https://uniapp.dcloud.io/api/plugins/login 
| Payment(支付基础库)       | [plus.payment](https://www.html5plus.org/doc/zh_cn/payment.html)     | https://uniapp.dcloud.io/api/plugins/payment | 是
| Payment(支付宝支付)        | [plus.payment](https://www.html5plus.org/doc/zh_cn/payment.html)     | https://uniapp.dcloud.io/api/plugins/payment | 是
| Payment(微信支付)          | [plus.payment](https://www.html5plus.org/doc/zh_cn/payment.html)     | https://uniapp.dcloud.io/api/plugins/payment | 是
| Share(分享基础库)                    | [plus.share](https://www.html5plus.org/doc/zh_cn/share.html)          | https://uniapp.dcloud.io/api/plugins/share | 是
| Share(QQ分享)                       | [plus.share](https://www.html5plus.org/doc/zh_cn/share.html)         | https://uniapp.dcloud.io/api/plugins/share 
| Share(新浪微博分享)                 | [plus.share](https://www.html5plus.org/doc/zh_cn/share.html)         | https://uniapp.dcloud.io/api/plugins/share 
| Share(微信分享)               | [plus.share](https://www.html5plus.org/doc/zh_cn/share.html)          | https://uniapp.dcloud.io/api/plugins/share | 是
| Speech(语音识别基础库)               | [plus.speech](https://www.html5plus.org/doc/zh_cn/speech.html)        | https://uniapp.dcloud.io/api/plugins/voice 
| Speech(百度语音识别)             | [plus.speech](https://www.html5plus.org/doc/zh_cn/speech.html)        | https://uniapp.dcloud.io/api/plugins/voice 
| SQLite(数据库)                   | [plus.sqlite](https://www.html5plus.org/doc/zh_cn/sqlite.html)       || 是
| Statistic(友盟统计)         | [plus.statistic](https://www.html5plus.org/doc/zh_cn/statistic.html)  || 是
| Uploader(文件上传)                | [plus.uploader](https://www.html5plus.org/doc/zh_cn/uploader.html)    | | 是https://uniapp.dcloud.io/api/request/network-file?id=uploadfile | 是
| VideoPlayer(视频播放)                 | [plus.video.VideoPlayer](https://www.html5plus.org/doc/zh_cn/video.html#plus.video.VideoPlayer) | https://uniapp.dcloud.io/api/media/video | 是
| XHR(网络请求)                        | [plus.net](https://www.html5plus.org/doc/zh_cn/xhr.html)              | https://uniapp.dcloud.io/api/request/request?id=request | 是
| nvue原生组件: map(高德地图)       | 不支持 | https://uniapp.dcloud.io/component/map 
| nvue原生组件: barcode(二维码)    | 不支持 | https://uniapp.dcloud.io/component/barcode 
| nvue原生组件: live-pusher(直播推流)  | 不支持 | https://uniapp.dcloud.io/component/live-pusher 
| nvue原生组件: video视频      | 不支持 | https://uniapp.dcloud.io/component/video 
| nvue原生组件: canvas            | 不支持 | https://github.com/dcloudio/NvueCanvasDemo 