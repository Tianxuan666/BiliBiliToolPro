# !/usr/bin/env bash
# cron 0 14 * * *
# new Env("baihu漫画任务")

. baihu_task_base.sh

target_task_code="Manga"
run_task "${target_task_code}"
