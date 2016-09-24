# AtCoder Ruby
## Overview
**harhogefoo**'s snippets.

### Array - 偶数Index, 奇数Indexの要素を抽出
```
# 偶数
ary = [1, 2, 3, 4, 5]
1.step(ary.size - 1, 2).map { |e| ary[e] }
# or
ary.select.with_index { |e, i| i % 2 == 1 }

# 奇数
0.step(ary.size - 1, 2).map { |e| ary[e] }
# or
ary.select.with_index { |e, i| i % 2 == 0 }
```

