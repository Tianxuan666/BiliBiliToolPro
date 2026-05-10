# 在白虎中运行

原理是，利用白虎的拉库命令，拉取本仓库源码，自动添加 cron 定时任务，然后在白虎容器中安装 `dotnet` 环境或 `bilitool` 二进制包，定时运行相应的 Task。

开始前，请先确保你的白虎面板是运行正常的。

## 1. 步骤

### 1.1. 登录白虎面板并修改配置
白虎面板，配置页中确保脚本后缀包含 `sh`。

### 1.2. 在白虎面板中添加拉库定时任务
两种方式，任选其一即可：

#### 1.2.1. 方式一：订阅管理

```text
名称：Bilibili
类型：公开仓库
链接：https://github.com/tianxuan666/BiliBiliToolPro.git
定时类型：crontab
定时规则：2 2 28 * *
白名单：
黑名单: qinglong/|/dev
依赖文件: .cs|.ts|.json|.go|.bru
文件后缀：
```

#### 1.2.2. 方式二：定时任务拉库

```text
名称：拉取Bili库
命令：bh repo https://github.com/tianxuan666/BiliBiliToolPro.git "baihu_task_"
定时规则：2 2 28 * *
```

保存后执行一次拉库。

### 1.3. 检查定时任务
拉库成功后，会自动添加 `baihu` 前缀的任务。

### 1.4. 配置白虎 Token（可选，推荐）
扫码登录后，为了自动将 Cookie 持久化到白虎环境变量，需要配置 OpenAPI token。

请在白虎环境变量中添加：

- `BH_bilibili`：白虎 OpenAPI token
- `BH_URL`：白虎 OpenAPI 地址（可选，默认 `http://localhost:8052/path`）

运行脚本时会自动注入：

- `Ray_PlatformType=BaiHu`
- `Ray_BaiHuConfig__Token=${BH_bilibili}`

### 1.5. Bili 登录
在白虎定时任务中，点击运行 `baihu扫码登录` 任务，查看日志中的二维码并扫码。

登录成功后会自动写入（或更新）白虎环境变量：

- `Ray_BiliBiliCookies__0`
- `Ray_BiliBiliCookies__1`
- `Ray_BiliBiliCookies__2`
- ...

多账号会自动递增编号，已存在账号会按 `DedeUserID` 自动更新。

## 2. 先行版
如果希望使用 develop 分支，可使用：

```text
白名单：baihu_dev_task_.+\.sh
分支：develop
```

## 3. 路径说明
白虎脚本容器路径默认为：

```text
/app/data/scripts
```

与青龙默认路径 `/ql/data` 不同，请注意区分。
