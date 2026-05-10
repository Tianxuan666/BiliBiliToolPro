# !/usr/bin/env bash
# cron 0 15 * * *
# new Env("baihu领取大会员漫画权益任务")

. baihu_task_base.sh

target_task_code="MangaPrivilege"
run_task "${target_task_code}"
