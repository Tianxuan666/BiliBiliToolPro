# !/usr/bin/env bash
# cron 5 9 * * *
# new Env("baihu每日任务[dev先行版]")

. baihu_dev_task_base.sh

target_task_code="Daily"
run_task "${target_task_code}"
