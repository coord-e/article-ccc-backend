# cccコンパイラのバックエンド

[![Actions Status](https://github.com/coord-e/article-ccc-backend/workflows/Latest/badge.svg)](https://github.com/coord-e/article-ccc-backend/actions?workflow=Latest)
[![Actions Status](https://github.com/coord-e/article-ccc-backend/workflows/Release/badge.svg)](https://github.com/coord-e/article-ccc-backend/actions?workflow=Release)

この記事は[言語実装 Advent Calendar 2019](https://qiita.com/advent-calendar/2019/lang_dev)の23日目です。なお、内容が同じ[はてなブログ版](https://coordination.hatenablog.com/entry/backend-of-ccc-compiler)が存在します。

最新リリースのPDFが下のリンクからダウンロードできます。
- [backend_of_ccc_compiler.pdf](https://github.com/coord-e/article-ccc-backend/releases/latest/download/backend_of_ccc_compiler.pdf)

最新のビルド結果がワークフローのartifactからダウンロードできます。
- [Latest](https://github.com/coord-e/article-ccc-backend/actions?query=workflow%3ALatest+is%3Asuccess)

## Build

ビルドにはdockerが必要です。

```shell
make
```
