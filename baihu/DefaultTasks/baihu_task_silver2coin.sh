# !/usr/bin/env bash
# cron 0 8 * * *
# new Env("baihu银瓜子兑换硬币任务")

. "$(dirname "$0")/baihu_task_base.sh"

target_task_code="Silver2Coin"
run_task "${target_task_code}"
