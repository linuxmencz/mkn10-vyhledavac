# MKN-10 · Vyhledávač diagnóz

Offline vyhledávač v Mezinárodní statistické klasifikaci nemocí (MKN-10, ÚZIS ČR, k 1. 1. 2026).
Pomůcka pro orientaci v kódech, nejde o diagnostický nástroj.

## Jak používat offline

Stránka je samostatná a nic nenačítá z internetu. Použít ji lze třemi způsoby.

### 1. Otevřít soubor `index.html` (nejjednodušší)

1. Na GitHubu zvol *Code → Download ZIP* a archiv rozbal.
2. Otevři soubor `index.html` v prohlížeči.

Stránka funguje bez internetu. Instalace jako aplikace v tomto případě není možná.

### 2. Nainstalovat jako aplikaci

1. Otevři stránku jednou online přes HTTPS (nebo přes `http://localhost:8080`, viz Docker níže).
2. Přidej ji na plochu:
   - Chrome / Edge: *Instalovat aplikaci*.
   - Safari na iPhonu: *Sdílet → Přidat na plochu*.

Stránka se uloží do zařízení a dál funguje i bez internetu. Na iPhonu může systém
uložená data po delší době nepoužívání smazat, pak je potřeba otevřít stránku znovu online.

### 3. Spustit v Dockeru

```bash
git clone https://github.com/linuxmencz/mkn10-vyhledavac.git
cd mkn10-vyhledavac
docker compose up -d --build
```

Stránka poběží na `http://localhost:8080`. Zastavení: `docker compose down`.
Docker se hodí hlavně pro provoz na serveru nebo ve vnitřní síti.

## Poznámka pro vývoj

Po změně stránky zvyš číslo verze `CACHE` v souboru `sw.js` (např. `mkn10-v2` → `mkn10-v3`),
jinak uživatelé s nainstalovanou aplikací dál uvidí starou verzi.
