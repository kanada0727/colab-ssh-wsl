# VSCode Remote SSH to Colab with WSL2

## Tested Environment

* Windows 10+
* VSCode (installed on windows)
* WSL2

## Setup (WSL)

1. [install cloudflared](wsl/install_cloudflared.sh)
2. [add ssh setting for cloudflared](wsl/add_ssh_setting_for_cloudflared.sh)
3. (optional) generate ssh key

    ```bash
    ssh-keygen -t ed25519 -P ""
    ```

## Setup (Windows)

1. create [.bat file](windows/colab-ssh.bat) for [some workaround](https://github.com/microsoft/vscode-remote-release/issues/937#issuecomment-514714615)
2. On VSCode, edit `remote.SSH.path` param like bellow

    ```json
    {
        ...
    "remote.SSH.path": "\\path\\to\\wsl-ssh.bat",
        ...
    }

    ```

## Setup (Google Colaboratory)

1. upload created (or existing) ssh publickey (`xxx.pub`) to Google Drive

2. run [this notebook](colab/colab_ssh_wsl.ipynb)

## Remote SSH to Colab

1. On VSCode, push `Ctrl+Shift+P` and run `remote SSH: Connect to host...` command
2. enter the URL (ends with `trycloudflare.com` ) displayed at colab notebook
