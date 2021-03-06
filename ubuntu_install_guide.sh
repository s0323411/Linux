# 使用腳本安裝軟體
# 新增一個 ubuntu_install_guide.sh  文本檔案。
# 每次運行 apt-get 下載安裝一個軟件以後，都把這一句 apt-get 命令保存在腳本文件裡，
# 這樣，一旦發生系統崩潰的情況，只需要在全新安裝後的系統上重新f運行這個腳本，就可以恢復系統上曾經安裝的軟件。

# 範本：
#!/bin/sh

# -------------------------------------------
# ---------     刪除一些沒用的軟件       ------------
# -------------------------------------------

# sudo apt-get remove libreoffice-common
sudo apt-get remove unity-webapps-common
# sudo apt-get remove thunderbird
sudo apt-get remove totem
sudo apt-get remove rhythmbox
sudo apt-get remove empathy brasero
sudo apt-get remove simple-scan gnome-mahjongg
sudo apt-get remove aisleriot
sudo apt-get remove gnome-mines
sudo apt-get remove cheese
sudo apt-get remove transmission-common
sudo apt-get remove gnome-orca
sudo apt-get remove webbrowser-app
sudo apt-get remove gnome-sudoku
sudo apt-get remove landscape-client-ui-install
sudo apt-get remove onboard deja-dup  

# -------------------------------------------
# ---------     添加新的軟件源     ---------------------
# -------------------------------------------
sudo add-apt-repository ppa:bit-team/stable  # Back in Time 備份軟體
sudo apt-get install python-software-properties # 記帳軟體 Money Manager EX
sudo apt-add-repository ppa:dwrj87/mmex-test # 記帳軟體 Money Manager EX
sudo dpkg --add-architecture i386  # 安裝 skype
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"  # 安裝 skype
sudo add-apt-repository ppa:me-davidsansome/clementine # 音樂播放器 Clementine
# sudo add-apt-repository ppa:ppsspp/stable   # 安裝 PPSSPP 模擬器
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -  # 安裝 syncthing
echo deb http://apt.syncthing.net/ syncthing release | sudo tee /etc/apt/sources.list.d/syncthing-release.list  # 安裝 syncthing
sudo apt-get install software-properties-common # 安裝 KODI
sudo add-apt-repository ppa:team-xbmc/ppa # 安裝 KODI
sudo add-apt-repository ppa:diodon-team/stable # Diodon 剪貼簿軟體
sudo apt-add-repository ppa:diesch/testing # 安裝 classicmenu-indicator 傳統應用程式列表 
# sudo add-apt-repository ppa:videolan/master-daily  # 安裝 VLC player 嚐鮮版
sudo add-apt-repository ppa:stebbins/handbrake-releases # 安裝 轉檔工具 handbrake
sudo add-apt-repository ppa:lotem/rime  # 安裝 rime 輸入法
sudo add-apt-repository ppa:rvm/smplayer  # smplayer
sudo add-apt-repository ppa:mbudde/ledger # ledger 記帳
# sudo add-apt-repository ppa:gregory-hainaut/pcsx2.official.ppa # PCSX2-PS2 模擬器
# sudo add-apt-repository ppa:wine/wine-builds # winehq
# sudo add-apt-repository -y ppa:ubuntu-elisp # emacs 新版

# -------------------------------------------
# 重新獲取軟件源的信息
sudo apt-get update
# 更新升級已安裝的軟件
sudo apt-get upgrade
# -------------------------------------------

# -------------------------------------------
# ---------     常用軟件     ---------------------
# -------------------------------------------
# 輸入法
sudo apt-get install ibus-rime  # 安裝 rime 輸入法
sudo apt-get install librime-data-terra-pinyin librime-data-bopomofo # 注音、地球拼音
# 影音
# sudo apt-get install smplayer smplayer-themes smplayer-skins  #安裝 smplayer
sudo apt-get install mpv # mpv 影音播放
sudo apt-get install vlc # VLC player 影音播放
sudo apt-get install handbrake-gtk handbrake-cli # 安裝轉檔工具 handbrake
sudo apt-get install ubuntu-restricted-extras  # 安裝第三方 code
sudo apt-get install libavcodec-extra # 安裝第三方 code
sudo apt-get install libdvd-pkg # 安裝第三方 code
sudo apt-get install openshot # 影片編輯軟體
# 系統
sudo apt-get install sbackup # 備份還原軟體
sudo apt-get install unity-tweak-tool # 安裝微調工具
# sudo apt-get install gnome-do # gnome-do 快速啓動
sudo apt-get install synapse # 快速啟動軟體
# sudo apt-get install --install-recommends winehq-devel # winehq windows 模擬器
# 圖像
sudo apt-get install shutter # shutter 截圖軟體
sudo apt-get install pinta # 繪圖軟體
sudo apt-get install ledger # 命令行記帳軟體
sudo apt-get install classicmenu-indicator # classicmenu-indicator 傳統應用程式列表
sudo apt-get install caliber # 安裝 calibre 電子書
sudo apt-get install diodon # Diodon 剪貼簿軟體
sudo apt-get install synaptic # Synaptic 套件管理程式
sudo apt-get install kodi # KODI 影音管理
sudo apt-get install redshift # redshift 螢幕亮度調整
sudo apt-get install syncthing # syncthing 同步軟體
sudo apt-get install clementine sudo apt-get install clementine # 音樂播放器 Clementine
sudo apt-get install skype # skype 即時通訊
sudo apt-get install backintime-qt4 # Back in Time 備份軟體
sudo apt-get install mmex # 記帳軟體 Money Manager EX
sudo apt-get install compizconfig-settings-manager # CompizConfig Settings Manager
sudo apt-get install p7zip-full p7zip-rar # 為壓縮檔管理員添加解 7z、rar 等的功能。
sudo apt-get install inkscape # inkscape 向量圖軟體
sudo apt-get install cups-pdf # 列印 PDF
sudo apt-get install git # Git
sudo apt-get install caffeine # 避免螢幕關閉
# sudo apt-get install emacs-snapshot # Emacs 文字編輯器（執行檔在 /usr/bin）
sudo apt-get install pyrenamer # 改名軟體
sudo apt-get install catfish # 搜尋軟體
sudo apt-get wine # 安裝 Wine windows 模擬器
# 遊戲
# sudo apt-get install ppsspp-qt # PPSSPP 模擬器
# sudo apt-get install pcsx2 # ps2 模擬器
# sudo apt-get install autokey-qt #快速鍵設定
# sudo apt-get install autokey-gtk #快速鍵設定


# --------------
# ----- 清理下載的緩存包
# -------------
sudo apt-get autoclean
sudo apt-get clean
# 清理不再需要的包
sudo apt-get autoremove
# 清理孤立的庫文件
sudo deborphan | xargs sudo apt-get -y remove --purge

