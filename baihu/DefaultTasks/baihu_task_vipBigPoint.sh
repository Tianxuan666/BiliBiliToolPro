# !/usr/bin/env bash
# cron 7 1 * * *
# new Env("baihu大会员大积分")

. "$(dirname "$0")/baihu_task_base.sh"

target_task_code="VipBigPoint"
run_task "${target_task_code}"
