#!/bin/bash

ROOT_PATH="/home/ec2-user/spring-github-action"
JAR="$ROOT_PATH/application.jar"
STOP_LOG="$ROOT_PATH/stop.log"
SERVICE_PID=$(pgrep -f $JAR) # 실행 중인 Spring 서버의 PID

if [ -z "$SERVICE_PID" ]; then
  echo "서비스가 실행 중이지 않음" >> $STOP_LOG
else
  echo "서비스 종료 중..." >> $STOP_LOG
  kill "$SERVICE_PID"
  # kill -9 $SERVICE_PID # 강제 종료를 원하면 이 명령어 사용
  echo "서비스 종료 완료" >> $STOP_LOG
fi
