# 네임스페이스 생성
echo "🔧 Creating namespace 'argocd'..."
kubectl create namespace argocd 2>/dev/null || echo "✅ Namespace 'argocd' already exists."

# argo-cd.yaml 적용
echo "🚀 Applying argo-cd.yaml to namespace 'argocd'..."
kubectl apply -n argocd -f argo-cd.yaml

# echo "✅ Argo CD 설치 스크립트 완료!"

# echo "🔧 [1/4] Argo CD CLI 최신 버전 확인 중..."
# VERSION=$(curl -L -s https://raw.githubusercontent.com/argoproj/argo-cd/stable/VERSION)
# echo "📦 최신 버전: v$VERSION"

# echo "⬇️  [2/4] Argo CD CLI 다운로드..."
# curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/download/v$VERSION/argocd-linux-amd64

# echo "🚀 [3/4] CLI 실행 파일 설치 중..."
# sudo install -m 555 argocd-linux-amd64 /usr/local/bin/argocd

# echo "🧹 다운로드 파일 정리 중..."
# rm argocd-linux-amd64

# echo "✅ Argo CD CLI 설치 완료! (버전 확인: $(argocd version --client))"

# #초기 비밀번호 확인
# argocd admin initial-password -n argocd