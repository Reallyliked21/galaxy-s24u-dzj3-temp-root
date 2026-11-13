# Third-party notices

本项目包含/参考了以下开源项目。源码发布遵循 GPL-3.0；各上游组件保留原许可证。

| 项目 | 用途 | 许可证 | 链接 |
|---|---|---|---|
| SamTimer (yoro1836) | POSIX timer UAF exploit 思路/代码 | MIT（按其仓库声明） | https://github.com/yoro1836/SamTimer |
| SamTimer (RiosWesley) | APK/UMH late-load 流程 | MIT（按其仓库声明） | https://github.com/RiosWesley/SamTimer |
| RootMyS24 (NanoTurtle1145) | 98260 集成、KDP/KernelSU late-load | GPL-3.0 | https://github.com/NanoTurtle1145/root-my-s24 |
| KernelSU (tiann) | LKM / ksud / manager 协议 | GPL-3.0 | https://github.com/tiann/KernelSU |
| Shizuku (RikkaApps) | 免 root shell 授权/UserService | Apache-2.0 | https://github.com/RikkaApps/Shizuku |
| CVE-2026-98260 | 漏洞研究 | — | Hyunwoo Kim (@v4bel) / InfinityCore 等 |

**不随仓库分发**：
- `ksud`（KDP patched）二进制：来源仓库未声明 LICENSE，默认保留所有权利；
- `uhexec` 二进制；
- 预编译 `libtimer_*.so`。

如你是上述项目作者并希望调整署名/授权，请开 issue 联系。
