#!/bin/bash

show_disk_usage() {
    df -k
}

show_memory_usage() {
    cat /proc/meminfo | head -n 10
}

show_users() {
    who
}

show_processes() {
    ps aux | head -n 10
}

