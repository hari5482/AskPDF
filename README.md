# 🚀 AskPDF: AI-Powered Document Assistant

**AskPDF** is a containerized, full-stack AI application that allows users to upload multiple PDF documents and engage in a real-time conversational Q&A. Built with **LangChain**, **Streamlit**, and **Groq**, the app uses **Retrieval-Augmented Generation (RAG)** to provide accurate answers based strictly on the uploaded content.

---

## ✨ Features

* **Persistent Chat UI:** A clean, modern interface that maintains chat history during your active session.
* **Fast Embeddings:** Utilizes `HuggingFace` models and `FAISS` for high-performance local vector search.
* **Blazing Fast Inference:** Powered by **Groq Cloud** for near-instant LLM responses using Llama-3 or Mixtral.
* **Dockerized Deployment:** Fully containerized for "plug-and-play" execution on any machine.
* **Vulnerability Scanned:** Optimized image build designed to pass **Docker Scout** security audits.

---

## 🛠️ Tech Stack

* **Frontend:** Streamlit
* **Orchestration:** LangChain
* **LLM:** Groq (Llama-3 / Mixtral)
* **Vector Database:** FAISS
* **Containerization:** Docker

---

## 🚀 Getting Started

### 1. Prerequisites
* [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running.
* A **Groq API Key** (Obtainable at the [Groq Console](https://console.groq.com/)).

### 2. Setup Environment
Create a `.env` file in the root directory and add your API credentials (this file is ignored by Git for security):

```env
GROQ_API_KEY=your_api_key_here
HF_TOKEN=your_huggingface_token_here

