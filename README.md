# 🕒 Pomodoro Timer en Bash

Un petit script Bash qui affiche un **minuteur Pomodoro** en **ASCII art géant et centré** dans le terminal.  
Parfait pour gérer tes sessions de travail avec style.

---

## ✅ Fonctionnalités

- ⏳ 25 minutes de travail
- ☕ 5 minutes de pause
- Affichage du temps en **gros chiffres ASCII**
- Timer **centré dans le terminal**
- Rafraîchissement en temps réel
- 🔔 Beep sonore à chaque changement de session

---

## ⚙️ Installation

1. Clone ou télécharge le script :
    ```bash
    git clone https://github.com/ton-pseudo/pomodoro-bash.git
    cd pomodoro-bash
    ```
2. Rends le script exécutable :
    ```bash
    chmod +x pomodoro.sh
    ```
3. Installe la dépendance `figlet` :
    ```bash
    sudo apt install figlet
    ```

---

## ▶️ Utilisation

Lance le script dans le terminal :
```bash
./pomodoro.sh
```

---

## 🔧 Personnalisation

Tu peux modifier la durée du travail et de la pause en éditant les variables en haut du script :
```bash
WORK_DURATION=25
BREAK_DURATION=5
```

---

## Créer un alias pomodoro (optionnel)

Pour pouvoir lancer le script simplement avec la commande `pomodoro` :

1. **Trouve le chemin absolu du script :**
    ```bash
    pwd
    ```
    Exemple : `/home/ton_user/pomodoro-bash`

2. **Ouvre ton fichier de configuration shell :**

    - Pour **Bash** :
      ```bash
      nano ~/.bashrc
      ```
    - Pour **Zsh** :
      ```bash
      nano ~/.zshrc
      ```

3. **Ajoute cette ligne à la fin du fichier** (en remplaçant le chemin) :
    ```bash
    alias pomodoro="/home/ton_user/pomodoro-bash/pomodoro.sh"
    ```

4. **Recharge le fichier de configuration :**
    ```bash
    source ~/.bashrc   # ou source ~/.zshrc
    ```

Tu peux maintenant lancer le timer avec :


## 📝 Licence

Projet libre – fais-en ce que tu veux !
