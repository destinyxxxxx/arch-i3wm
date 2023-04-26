# arch-i3wm

## 安装字体
+ 安装字体及表情
  ```
  yay -S adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts adobe-source-code-pro-fonts wqy-zenhei wqy-bitmapfont wqy-microhei wqy-microhei-lite ttf-font-awesome noto-fonts-emoji ttf-apple-emoji
  ```

## 安装图标
+ 安装 Polybar, Rofi 和 dunst 相关图标
  ```
  yay -S papirus-icon-theme
  ```

## 配置中文输入法
+ 安装 fcitx5
  ```
  yay -S fcitx5 fcitx5-qt fcitx5-gtk
  ```
+ 添加环境变量
  编辑 /etc/environment 并添加以下几行，然后重新登录
  ```
  GTK_IM_MODULE=fcitx
  QT_IM_MODULE=fcitx
  XMODIFIERS=@im=fcitx
  SDL_IM_MODULE=fcitx
  GLFW_IM_MODULE=ibus
  ```
+ 安装图形化配置工具
  ```
  yay -S fcitx5-configtool
  ```
  + 在 Input Method 中添加 Pinyin
  + 在 Addons 的 Pinyin 配置中勾选 Enable Cloud Pinyin
  + 在 Addons 的 Cloud Pinyin 配置中跟换 Backend 为 Baidu
+ 安装主题
  ```
  yay -S fcitx5-material-color
  ```
+ 安装词库
  ```
  yay -S fcitx5-pinyin-sougou fcitx5-pinyin-zhwiki
  ```
+ 随桌面环境自动启动

## 配置网络管理工具
+ 安装 NetworkManager 及图形化配置工具
  ```
  #安装软件包
  sudo pacman -S networkmanager

  #设置服务开机自启
  sudo systemctl enable NetworkManager.service

  #启动服务
  sudo systemctl start NetworkManager.service

  #安装图形化界面配置工具
  yay -S nm-connection-editor
  ```

## i3wm DPI 设置
+ 在高分辨率显示器下，如果使用i3wm默认设置的话，可能会出现字体非常小看起来眼镜累的情况，例如 Chrome 里面文字非常小，解决办法如下：
  ```
  # ~/.Xresources
  Xft.dpi: 128
  ```
