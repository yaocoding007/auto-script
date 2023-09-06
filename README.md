# 自动化脚本-简化一些git 操作

## 指令集

* git-push
* push-origin
* demo-c

### git-push
1. `git add .`
2. `git commit -m $1||'update'`
3. `git push origin $current`

### `push-origin $1||'test'` 
1. 删除`$1`分支
2. 基于当前分支 重新checkout出一个 `$1`分支
3. 强制push到origin

### `demo-c $1`
创建一个以当前日期为文件名 父文件夹名||`$1` 为文件后缀的文件

