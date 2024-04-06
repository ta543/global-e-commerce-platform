#!/bin/bash

# Define the base directory
base_dir="./helm-charts/monitoring"

# Create the templates directory
templates_dir="${base_dir}/templates"
mkdir -p "${templates_dir}"

# Create sample Kubernetes object templates
cat << EOF > "${templates_dir}/service.yaml"
apiVersion: v1
kind: Service
metadata:
  name: monitoring-service
spec:
  selector:
    app: monitoring
  ports:
    - protocol: TCP
      port: 80
      targetPort: 8080
EOF

cat << EOF > "${templates_dir}/ingress.yaml"
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: monitoring-ingress
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  rules:
    - host: monitoring.example.com
      http:
        paths:
          - path: /
            pathType: Prefix
            backend:
              service:
                name: monitoring-service
                port:
                  number: 80
EOF

cat << EOF > "${templates_dir}/configmap.yaml"
apiVersion: v1
kind: ConfigMap
metadata:
  name: monitoring-configmap
data:
  prometheus.yaml: |
    global:
      scrape_interval: 15s
      evaluation_interval: 15s
    scrape_configs:
      - job_name: 'prometheus'
        static_configs:
          - targets: ['localhost:9090']
EOF

echo "Files created successfully in ${templates_dir}."
