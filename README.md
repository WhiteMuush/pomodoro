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

## 📝 Licence

Projet libre – fais-en ce que tu veux !
