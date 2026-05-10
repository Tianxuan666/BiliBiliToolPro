# !/usr/bin/env bash
# cron 0 13 * * *
# new Env("baihu天选时刻")

. baihu_task_base.sh

target_task_code="LiveLottery"
run_task "${target_task_code}"
