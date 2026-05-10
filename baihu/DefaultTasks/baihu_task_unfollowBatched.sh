# !/usr/bin/env bash
# cron 0 12 1 * *
# new Env("baihu批量取关主播")

. baihu_task_base.sh

target_task_code="UnfollowBatched"
run_task "${target_task_code}"
