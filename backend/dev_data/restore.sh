#!/usr/bin/env bash
# 로컬 개발 DB를 dev_seed_dump.sql 스냅샷으로 교체하고 업로드 파일을 복원한다.
set -euo pipefail
cd "$(dirname "$0")/../.."

echo "[1/3] DB 복원 (기존 로컬 데이터 대체)"
docker compose exec -T db psql -U postgres -d sogang_app -q < backend/dev_data/dev_seed_dump.sql

echo "[2/3] 업로드 파일 복사"
mkdir -p backend/uploads
cp -R backend/dev_data/uploads/. backend/uploads/

echo "[3/3] 백엔드 재시작"
docker compose restart backend

echo "완료. 테스트 계정: test@sogang.ac.kr / password123"
