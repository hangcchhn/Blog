# patch
> 补丁













```sh

git diff source > source.patch

git format-patch commit_id

# apply mailbox
git am


```


---

```sh

diff -u old_file new_file > diff.patch


patch new_file < diff.patch


patch -RE < diff.patch
```