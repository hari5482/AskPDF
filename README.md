🚀 AskPDF: AI-Powered Document Assistant
AskPDF is a containerized, full-stack AI application that allows users to upload multiple PDF documents and engage in a real-time conversational Q&A. Built with LangChain, Streamlit, and Groq, the app uses Retrieval-Augmented Generation (RAG) to provide accurate answers based strictly on the uploaded content.

✨ Features
Persistent Chat UI: A clean, modern interface that maintains chat history during your session.

Fast Embeddings: Utilizes HuggingFace models and FAISS for high-performance vector search.

Blazing Fast Inference: Powered by Groq Cloud for near-instant LLM responses.

Dockerized Deployment: Fully containerized for "plug-and-play" execution on any machine.

Vulnerability Scanned: Optimized image build to pass Docker Scout security audits.

🛠️ Tech Stack
Frontend: Streamlit

Orchestration: LangChain

LLM: Groq (Llama-3/Mixtral)

Vector Database: FAISS

Containerization: Docker

🚀 Getting Started
1. Prerequisites
Docker Desktop installed.

A Groq API Key (Get one at Groq Console).

2. Setup Environment
Create a .env file in the root directory and add your keys:

Code snippet
GROQ_API_KEY=your_api_key_here
HF_TOKEN=your_huggingface_token_here
3. Build and Run with Docker
Build the image (optimized for security):

Bash
docker build -t askpdf-app .
Run the container:

Bash
docker run -d --name askpdf-container -p 8501:8501 --env-file .env askpdf-app
Access the app at: http://localhost:8501

📂 Project Structure
Plaintext
.
├── main.py              # Streamlit application logic
├── Dockerfile           # Optimized Docker build instructions
├── requirements.txt     # Python dependencies
├── .dockerignore        # Build context optimization
├── .gitignore           # Security and privacy filters
└── Docs/                # (Local only) PDF storage
🔒 Security & Privacy
API Security: The .env file is explicitly ignored by Git to prevent key exposure.

Data Privacy: Uploaded documents and generated vector indices are excluded from the Docker image build via .dockerignore.