# 分支
> branch



- master
- main

- feature
- develop
- release

- fix-bug

---
```sh
# 创建指定分支，并切换到指定分支
git checkout -b new_dev
# 等价于下面两条命令
git branch new_dev
git checkout new_dev

# 推送远程仓库
git push origin new_dev

# 克隆远程仓库
git clone -b new_dev http://xxx.git

```
---

```sh
# 检出：根据当前分支创建develop分支，并切换到develop分支
git checkout -b develop

# 显示所有分支
git branch

# 拉取远程仓库
git pull

# 检出：切换release分支
git checkout release

# 将指定develop分支并入当前release分支
git merge develop

# 添加冲突文件
git add xxx.txt

# 当前release分支：提交本地仓库，推送远程仓库
git commit -m 'commit develop'
git push

# 删除develop分支
git branch -d develop
git push

```
---
# merge

```sh
# fast-forward
--no-ff
#
--squash

# 合并信息
git merge develop -m "merge branch 'develop' into 'release'"
# 合并取消
git merge --abort

```


---

