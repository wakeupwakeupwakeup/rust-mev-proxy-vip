I'm not a programmer at all, this is my first time ever doing something like this. I removed the license check just because I was curious and wanted to learn how it works. I decided to share it here in case someone else finds it useful too.

You no longer need to provide a signature in the config. The only thing you need to do is insert your own public key in the config file for everything to work correctly.

# Description

This proxy software is specifically designed for integration with Jito and allows you to run a high-performance proxy server that increases TPS (transactions per second) in the Jito ecosystem. Using this solution ensures optimization when working with Jito, service scaling, and increased throughput thanks to efficient transaction processing via proxy. With support for the Jito engine and flexible proxy configuration, you can achieve maximum performance and reliability for your Solana applications. Jito proxy helps implement modern approaches to accelerating and optimizing RPC operations, as well as ensuring stable integration with Jito infrastructure for MEV and other high-load tasks. If you are looking for a tool to increase throughput and stability in Solana, this Jito proxy is an excellent choice for your project.

# README

This software is a patched version of the original software [Original Github](https://github.com/SaoXuan/rust-mev-proxy-vip).

- [Official website](https://www.solboxs.com/proxy)
- [User guide](https://rust-mev-bot.solboxs.com/basics/proxy-fu-wu)

## Quick Start

1. Install the required dependencies:

   ```sh
   sudo sh ./install_deps.sh
   ```

   (sudo is required to install dependencies)

2. Configure the `config.yaml` file:

   - Enter your public wallet address in the `pay_wallet_address` field.
   - Set the `jito_engine` and `rpc_type` parameters.

3. Run the program:

   ```sh
   sh ./run.sh
   ```

# Buy Me Coffee

Solana: FBhS1a57H6MnHAVcu3MntF1tj8MkGnrvo7nFWc49rgKE

# 中文翻译

我根本不是程序员，这是我第一次做这样的事情。我移除了许可证检查，只是出于好奇，想了解它是如何工作的。我决定在这里分享，也许对其他人也有用。

现在你不需要在配置中提供签名。你只需要在配置文件中插入你自己的公钥，一切就能正常工作。

# 描述

该代理软件专为与 Jito 集成而设计，可运行高性能代理服务器，提高 Jito 生态系统中的 TPS（每秒交易数）。使用该方案可优化与 Jito 的交互、服务扩展，并通过高效的代理交易处理提升吞吐量。得益于对 Jito engine 的支持和灵活的代理配置，您可以为 Solana 应用实现最大性能和可靠性。Jito proxy 有助于实现现代化的 RPC 加速与优化方法，并确保与 Jito 基础设施的稳定集成，适用于 MEV 及其他高负载任务。如果您在寻找提升 Solana 吞吐量和稳定性的工具，这款 Jito proxy 是您的理想选择。

# 说明

本软件为原版软件的补丁版本 [Original Github](https://github.com/SaoXuan/rust-mev-proxy-vip)。

- [官方网站](https://www.solboxs.com/proxy)
- [使用指南](https://rust-mev-bot.solboxs.com/basics/proxy-fu-wu)

## 快速开始

1. 安装所需依赖：

   ```sh
   sudo sh ./install_deps.sh
   ```

   （sudo 用于安装依赖）

2. 配置 `config.yaml` 文件：

   - 在 `pay_wallet_address` 字段填写你的钱包公钥地址。
   - 设置 `jito_engine` 和 `rpc_type` 参数。

3. 启动程序：

   ```sh
   sh ./run.sh
   ```

# Buy Me Coffee

Solana: FBhS1a57H6MnHAVcu3MntF1tj8MkGnrvo7nFWc49rgKE
