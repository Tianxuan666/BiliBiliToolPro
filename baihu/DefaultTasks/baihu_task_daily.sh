# !/usr/bin/env bash
# cron 0 9 * * *
# new Env("baihu每日任务")

. "$(dirname "$0")/baihu_task_base.sh"

target_task_code="Daily"
run_task "${target_task_code}"
