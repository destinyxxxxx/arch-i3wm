[TOC]

# x11vnc 配置说明

## 安装 x11vnc

    $ yay -S x11vnc

## 创建密码文件

    $ sudo x11vnc -storepasswd

    Enter VNC password: *********
    Verify password: *********

    Write password to ~/.vnc/passwd? [y]/n y
    Password written to: ~/.vnc/passwd

## 设置开机自启动 x11vnc

编辑 `/etc/systemd/system/x11vnc.service` 添加以下几行:

    [Unit]
    Description=Remote desktop service (VNC)
    Requires=display-manager.service
    After=display-manager.service
     
    [Service]
    pype=simple
    ExecStart=/usr/bin/x11vnc -display :0 -auth /home/USERNAME/.Xauthority -forever -loop -noxdamage -repeat -rfbauth /home/USERNAME/.vnc/passwd -rfbport 5900 -shared -capslock -nomodtweak -ncache 10
    ExecStop=/usr/bin/killall x11vnc
     
    [Install]
    WantedBy=multi-user.target

注意：`USERNAME` 需替换为自己的用户名

    $ sudo systemctl daemon-reload
    $ sudo systemctl enable x11vnc
    $ sudo systemctl start x11vnc


