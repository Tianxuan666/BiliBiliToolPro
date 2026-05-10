# !/usr/bin/env bash
# cron 5 0 * * *
# new Env("baihu直播粉丝牌")

. baihu_task_base.sh

target_task_code="LiveFansMedal"
run_task "${target_task_code}"
