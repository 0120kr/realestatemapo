# 오늘먼지

광고 없는 미세먼지·초미세먼지 확인 웹앱. 휴대폰 홈 화면에 추가하면 앱처럼 쓸 수 있다.

- 마지막으로 검색해 추가한 동네가 기본 위치(★, 꾹 눌러 변경). 현재 위치 또는 저장한 동네의 미세먼지(PM10)·초미세먼지(PM2.5), 오존, 이산화질소
- WHO 권고 기반 8단계 등급(최고/좋음/양호/보통/나쁨/상당히 나쁨/매우 나쁨/최악)
- 단계마다 표정과 동작이 바뀌는 여자아이 캐릭터 마스코트, 누르면 랜덤 이모지가 튀어나옴
- 휴대폰 사진을 골라 마스코트로 쓰기(사진은 기기에만 저장, 단계별로 반짝이·먼지구름·마스크·눈물 효과)
- 시간별(24시간)·일별(하루 평균) 예보
- 오프라인일 때 마지막으로 받은 정보 표시

데이터는 [Open-Meteo 대기질 API](https://open-meteo.com/en/docs/air-quality-api)(CAMS 예측 모델)를 쓴다. 측정소 실측값이 아닌 모델 추정값이다.

## 배포

GitHub 저장소 Settings → Pages → Build and deployment에서 Source를 "Deploy from a branch"로, 브랜치와 `/ (root)` 폴더를 고르면 `https://<사용자>.github.io/<저장소>/`에서 열린다.

## 안드로이드 앱 (APK)

`claude/mobile-app-analysis-xaigd2` 브랜치에 푸시하면 GitHub Actions(`.github/workflows/android.yml`)가
Capacitor로 APK를 빌드해 `app-latest` 릴리스에 `oneulmeonji.apk`로 올린다.

- 서명: `android-keystore/debug.keystore`(공개된 디버그 키). 매 빌드가 같은 키로 서명되어 덮어 설치가 된다.
  개인용 설치 파일이므로 Play 스토어 배포용으로 쓰지 않는다.
- 로컬 빌드: `npm install && sh scripts/build-www.sh && npx cap add android` 후 Android Studio에서 연다.
