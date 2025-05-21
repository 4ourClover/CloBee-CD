# 네임스페이스 생성
echo "🔧 Creating namespace 'argocd'..."
kubectl create namespace argocd 2>/dev/null || echo "✅ Namespace 'argocd' already exists."

# argo-cd.yaml 적용
echo "🚀 Applying argo-cd.yaml to namespace 'argocd'..."
kubectl apply -n argocd -f argo-cd.yaml

echo "✅ Argo CD 설치 스크립트 완료!"