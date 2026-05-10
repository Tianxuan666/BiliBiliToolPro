# !/usr/bin/env bash
# cron 0 8 * * *
# new Env("baihu测试ck[dev先行版]")

. "$(dirname "$0")/baihu_dev_task_base.sh"

target_task_code="Test"
run_task "${target_task_code}"
