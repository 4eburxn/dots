#!/bin/bash

TAB_MARK="my_tabbed_group"

# Проверяем, есть ли уже контейнер с вкладками
if swaymsg -t get_tree | jq -e ".. | select(.marks?[]? == \"$TAB_MARK\")" >/dev/null; then
    # Если есть, добавляем текущее окно в него
    swaymsg "[con_id=$(swaymsg -t get_tree | jq '.. | select(.focused?) | .id')] mark $TAB_MARK"
    swaymsg "[con_mark=$TAB_MARK] move container to mark $TAB_MARK"
else
    # Если нет, создаем новую группу вкладок
    swaymsg "mark $TAB_MARK"
    swaymsg "[con_mark=$TAB_MARK] layout tabbed"
fi
