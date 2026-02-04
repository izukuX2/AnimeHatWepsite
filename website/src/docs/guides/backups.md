---
title: Backups
titleTemplate: Guides
description: Backups help you prevent losing your library if something happens.
---

# Backups

Backups can be created to save your library data and app settings. You can transfer and restore backup files between devices running **AnimeHat**.

::: tip How to create a backup
1. Go to **Settings** -> **Data and storage**.
2. Select **Create backup** and choose a location to save it.

<img
  class="only-light"
  src="/docs/guides/backups/backup.light.webp"
  alt="Backup and Restore"
  width="414"
  height="194"
  loading="lazy"
  decoding="async"
/>
<img
  class="only-dark"
  src="/docs/guides/backups/backup.dark.webp"
  alt="Backup and Restore"
  width="414"
  height="194"
  loading="lazy"
  decoding="async"
/>
:::

## General backup details

### What is included in a backup?
Backups will contain the following:

#### Library data
- **Library entries** - Your saved anime, cartoons, and movies.
- **Episodes** - Playback progress and metadata for saved entries.
- **Tracking** - Trackers (MyAnimeList, AniList, etc.) linked to your entries.
- **History** - Your full watch history.
- **Categories** - Custom categories used to organize your library.

#### Settings data
- **App settings** - General theme, player, and notification settings.
- **Extension repos** - Links to your added source repositories.
- **Source settings** - Custom configurations for individual sources.

### What is not included in a backup?
- **Extensions** (You must reinstall them upon restoration).
- **Downloaded video files**.
- **Custom covers** applied to entries.

## Restoring a backup
Restore a backup file in **Settings** -> **Data and storage** -> **Restore backup**.

::: tip
To ensure a smooth restoration process, remember to:
1. Log into your **Tracking services** (AniList, MAL, etc.).
2. Reinstall the **Extensions** used in your library.
:::

## Automatic Backups

It is highly recommended to enable automatic backups to ensure you never lose your progress.

::: tip How to enable automatic backups
1. Go to **Settings** -> **Data and storage**.
2. Set a **Backup frequency** to schedule automatic backups.
- Automatic backup files (ending in `.ahbk`) can be found in your specified **Storage location**'s `autobackup` folder.
:::

## Syncing with Cloud Services
While built-in cloud sync is not currently available, you can use third-party apps like [FolderSync](https://play.google.com/store/apps/details?id=dk.tacit.android.foldersync.lite) to automatically sync your `autobackup` folder to Google Drive, Dropbox, or other services.
