# Dockerfile para Open WebUI customizado com suporte a OpenAI, Anthropic e ferramentas

FROM ghcr.io/open-webui/open-webui:main

ENV WEBUI_SECRET_KEY=""
ENV ENABLE_OPENAI="false"
ENV ENABLE_ANTHROPIC="false"
ENV ENABLE_PIPELINES="false"
ENV ENABLE_TTS="false"
ENV ENABLE_SPEECH="false"

# Variáveis para APIs
ENV OPENAI_API_KEY=""
ENV ANTHROPIC_API_KEY=""

EXPOSE 8080

CMD ["uv", "serve", "--host", "0.0.0.0", "--port", "8080"]
