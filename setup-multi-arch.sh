mkdir -p .devcontainer/{linux-x86_64,linux-x86_32,linux-arm_64,linux-arm_32} && \
cat > .devcontainer/linux-x86_64/devcontainer.json << 'EOF'
{
  "name": "Linux x86_64 (amd64) – Shared",
  "image": "ghcr.io/kelvinwu602/devcontainer/linux-x86_64:latest",
  "postCreateCommand": "echo '✅ Ready for x86_64 development (shared image)'",
  runArgs": [
    "--cap-add=SYS_PTRACE",
    "--security-opt",
    "seccomp=unconfined"
  ],
  "customizations": {
    "vscode": {
      "extensions": ["ms-vscode.cpptools"]
    }
  }
}
EOF
cat > .devcontainer/linux-x86_32/devcontainer.json << 'EOF'
{
  "name": "Linux x86_32 (i386) – Shared",
  "image": "ghcr.io/kelvinwu602/devcontainer/linux-x86_32:latest",
  "postCreateCommand": "echo '✅ Ready for x86_32 development (shared image)'",
  runArgs": [
    "--cap-add=SYS_PTRACE",
    "--security-opt",
    "seccomp=unconfined"
  ],
  "customizations": {
    "vscode": {
      "extensions": ["ms-vscode.cpptools"]
    }
  }
}
EOF
cat > .devcontainer/linux-arm_64/devcontainer.json << 'EOF'
{
  "name": "Linux ARM 64-bit (arm64) – Shared",
  "image": "ghcr.io/kelvinwu602/devcontainer/linux-arm_64:latest",
  "postCreateCommand": "echo '✅ Ready for ARM 64-bit development (shared image)'",
  runArgs": [
    "--cap-add=SYS_PTRACE",
    "--security-opt",
    "seccomp=unconfined"
  ],
  "customizations": {
    "vscode": {
      "extensions": ["ms-vscode.cpptools"]
    }
  }
}
EOF
cat > .devcontainer/linux-arm_32/devcontainer.json << 'EOF'
{
  "name": "Linux ARM 32-bit (arm/v7) – Shared",
  "image": "ghcr.io/kelvinwu602/devcontainer/linux-arm_32:latest",
  "postCreateCommand": "echo '✅ Ready for ARM 32-bit development (shared image)'",
  runArgs": [
    "--cap-add=SYS_PTRACE",
    "--security-opt",
    "seccomp=unconfined"
  ],
  "customizations": {
    "vscode": {
      "extensions": ["ms-vscode.cpptools"]
    }
  }
}
EOF
echo "✅ Four dev container configs created! Open the folder in VS Code and run 'Dev Containers: Reopen in Container' to pick one."