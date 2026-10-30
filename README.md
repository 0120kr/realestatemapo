# 오늘먼지

광고 없는 미세먼지·초미세먼지 확인 웹앱. 휴대폰 홈 화면에 추가하면 앱처럼 쓸 수 있다.

- 현재 위치 또는 저장한 동네의 미세먼지(PM10)·초미세먼지(PM2.5), 오존, 이산화질소
- 환경부 4단계 등급(좋음/보통/나쁨/매우나쁨)
- 시간별(24시간)·일별(하루 평균) 예보
- 오프라인일 때 마지막으로 받은 정보 표시

데이터는 [Open-Meteo 대기질 API](https://open-meteo.com/en/docs/air-quality-api)(CAMS 예측 모델)를 쓴다. 측정소 실측값이 아닌 모델 추정값이다.

## 배포

GitHub 저장소 Settings → Pages → Build and deployment에서 Source를 "Deploy from a branch"로, 브랜치와 `/ (root)` 폴더를 고르면 `https://<사용자>.github.io/<저장소>/`에서 열린다.
