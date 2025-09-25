-- Table pour stocker les articles RSS liés à l’IA
CREATE TABLE IF NOT EXISTS rss_articles (
    id SERIAL PRIMARY KEY,                  -- Identifiant unique auto-incrémenté
    title TEXT NOT NULL,                    -- Titre de l’article
    link TEXT UNIQUE NOT NULL,              -- Lien (unique pour éviter les doublons)
    description TEXT,                       -- Résumé de l’article
    published_at TIMESTAMP,                 -- Date de publication
    source VARCHAR(100) DEFAULT 'unknown',  -- Nom du flux RSS (ex: TechCrunch)
    created_at TIMESTAMP DEFAULT NOW()      -- Date d’insertion en base
);

-- Index pour accélérer la recherche par date
CREATE INDEX IF NOT EXISTS idx_rss_articles_published 
ON rss_articles(published_at);
