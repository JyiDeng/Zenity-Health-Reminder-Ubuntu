#!/bin/bash

# Ubuntu健康提醒系统安装脚本

echo "🏥 Ubuntu健康提醒系统安装程序"
echo "=================================="

# 检查是否为Ubuntu系统
if ! command -v apt &> /dev/null; then
    echo "❌ 错误：此脚本仅支持基于apt的系统（如Ubuntu）"
    exit 1
fi

# 检查zenity是否已安装
if command -v zenity &> /dev/null; then
    echo "✅ Zenity已安装"
else
    echo "📦 正在安装Zenity..."
    if sudo apt update && sudo apt install -y zenity; then
        echo "✅ Zenity安装成功"
    else
        echo "❌ Zenity安装失败，请检查网络连接或手动安装"
        exit 1
    fi
fi

# 添加执行权限
echo "🔧 设置脚本执行权限..."
chmod +x reminder_health.sh view_work_log.sh

echo ""
echo "🎉 安装完成！"
echo ""
echo "使用方法："
echo "  启动健康提醒系统: ./reminder_health.sh"
echo "  查看工作日志:     ./view_work_log.sh"
echo ""
echo "💡 提示：可以将这些脚本添加到系统启动项中，实现开机自动启动"
echo "         或者创建桌面快捷方式方便使用"
