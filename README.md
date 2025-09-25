
# 🤖 N8N - Telegram AI Alert Bot

Ce projet utilise [n8n](https://n8n.io) en local via Docker pour **récupérer automatiquement les dernières actualités sur l’intelligence artificielle via RSS** et les envoyer sur **Telegram**.

---

## 📌 Fonctionnalités

- 🔎 Lecture automatique du flux RSS (ex: TechCrunch AI)
- 🗄️ Sauvegarde des articles dans PostgreSQL
- 📲 Notification Telegram des nouveaux articles (< 10 minutes)
- 🔐 Configurable via `.env` (sécurité des mots de passe)
- 📂 Projet versionné avec Git & GitHub (bonnes pratiques pro)

---

## 🚀 Installation

### 1️⃣ Prérequis
- [Docker](https://www.docker.com/) et [Docker Compose](https://docs.docker.com/compose/)
- [Git](https://git-scm.com/)
- Un compte [Telegram](https://telegram.org/) et un **bot** avec un **chat_id**

### 2️⃣ Cloner le projet
```bash
git clone https://github.com/sterve9/n8n-ia-bot.git
cd n8n-ia-bot

### 3️⃣ Configurer les variables d’environnement
Créer un fichier `.env` (ou copier depuis `.env.example`) et définir :

```env
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
POSTGRES_DB=n8n
TELEGRAM_API_KEY=xxxxxxx
TELEGRAM_CHAT_ID=xxxxxxx

---
### 4️⃣ Lancer le projet

docker-compose up -d

📂 Structure du projet
n8n-ia-bot/
├── docker-compose.yml   # Configuration Docker n8n + Postgres
├── .env                 # Variables sensibles (non versionné)
├── .gitignore           # Exclusions Git
├── workflows/           # Workflows exportés de n8n (JSON)
├── sql/                 # Scripts SQL (tables, migrations…)
└── scripts/             # Scripts automatiques (backup, export…)

🧠 Exemple d’utilisation

n8n lit un flux RSS d’actualités IA

Les articles sont enregistrés dans la table rss_articles de PostgreSQL

Une notification est envoyée automatiquement sur Telegram avec le titre et le lien

🛡️ Sécurité

❌ Les mots de passe ne doivent jamais être commités → ils sont stockés dans .env

✅ GitHub ignore automatiquement les fichiers sensibles via .gitignore

🔐 Pense à régénérer régulièrement ton TELEGRAM_API_KEY

👨‍💻 Auteur

Projet développé par Sterve ✨
Contact : sterve90237@gmail.com

📄 Licence

MIT – Libre d’utilisation, modification et partage

