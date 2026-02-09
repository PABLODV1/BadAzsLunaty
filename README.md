# [B]adAzs LUNATY – MULTI-CLASS COMBAT MODULE (v1.6)

**Battle Analysis Driven Assistant Zmart System – Combat Layer**  
*Turtle WoW Edition – Paladin & Hunter Integration*
<a href="https://www.paypal.com/donate/?hosted_button_id=VLAFP6ZT8ATGU">
  <img src="https://github.com/ThePeregris/MainAssets/blob/main/Donate_PayPal.png" alt="Tips Appreciated!" align="right" width="120" height="75">
</a>

## 1. TECHNICAL MANIFESTO | BadAzs LUNATY

**Version:** v1.6

**Target:** Turtle WoW (Client 1.12.x – LUA 5.0)

**Architecture:** Class-Specific Logic Module

**Dependencies:** **BadAzs CORE v1.6+** **Author:** **ThePeregris**

**BadAzs LUNATY** is an advanced combat module designed to streamline the gameplay of complex classes. Operating atop the CORE layer, it handles rotation decisions, buff management, and dynamic equipment swapping (Sets) via ItemRack.

✔️ Automated Sealing & Engagement

✔️ Intelligent Distance Management (Hunter)

✔️ Adaptive Healing (Self/Focus/Target)

✔️ Real-time Gear Swapping

---

## 2. PALADIN MODULE (Holy & Retribution)

The Paladin module focuses on buff maintenance and role versatility during combat.

### 🛡️ Smart Sealing & Engagement

```text
/lunpallyseal

```

A single macro that prepares the Paladin for battle:

1. Triggers the **CORE Attack API** (prevents toggle-off spam).
2. Automatically casts the appropriate **Racial** ability.
3. Equips the **"SEAL"** gear set via ItemRack.
4. Checks if **Seal of Righteousness** is active; if not, casts it.

### ⚕️ Adaptive Healing

```text
/lunpallyheal

```

A prioritized healing system with modifier support:

* **Normal:** Heals current target.
* **SHIFT:** Self-Heal (focuses on you).
* **CTRL:** Heals your **Focus** (as defined via CORE).
* **Equipment:** Automatically swaps to the **"HOLY"** set before casting.

---

## 3. HUNTER MODULE (Beast Mastery & Marksmanship)

The Hunter module eliminates the micromanagement of distance and melee/ranged transitions.

### 🏹 Combat Flow

```text
/lunhunter

```

Dynamic logic that reads the battlefield in real-time:

1. **Range Check:** Detects if the target is within Melee range (~5 yards).
2. **Melee Logic:** If close, stops ranged shots, triggers proximity attack, and uses **Raptor Strike** (with cooldown verification).
3. **Ranged Logic:** If at distance, initiates **Auto Shot** and maintains the Attack API.

---

## 4. INTEGRATED UTILITIES

Lunaty deeply integrates with CORE APIs to ensure stability:

* **ItemRack Integration:** All set swaps are "fail-safe." If ItemRack is missing, combat continues without LUA errors.
* **Focus Awareness:** Full integration with the CORE Focus system for group utility and support.
* **Racial Engine:** Optimized use of racial abilities at the start of combat cycles.

---

## 5. SLASH COMMANDS

| Command | Class | Description |
| --- | --- | --- |
| **`/lunpallyseal`** | Paladin | Starts Attack, Racial, Damage Set, and Seal. |
| **`/lunpallyheal`** | Paladin | Swaps to Holy Set and executes Smart Heal. |
| **`/lunhunter`** | Hunter | Automatically toggles between Melee and Ranged. |

---

## 6. INSTALLATION & REQUIREMENTS

📌 **IMPORTANT:** This module requires **BadAzs CORE** to be installed and active.

1. Ensure the `BadAzsCore` folder is in your AddOns directory.
2. Install the `BadAzsLunaty` folder.
3. Configure your ItemRack sets with the exact names: **"SEAL"** and **"HOLY"**.

---
**BadAzs LUNATY v1.6** *Complex mechanics, simple execution.*

---
# PT-BR

O **BadAzs LUNATY** é um módulo de combate avançado projetado para simplificar a jogabilidade de classes complexas. Ele atua acima da camada CORE, executando decisões de rotação, gerenciamento de buffs e troca dinâmica de equipamentos (Sets) via ItemRack.

✔️ Automação de Selos e Ataque

✔️ Gestão Inteligente de Distância (Hunter)

✔️ Cura Adaptativa (Self/Focus/Target)

✔️ Troca de Sets em tempo real

---

## 2. PALADIN MODULE (Holy & Retribution)

O módulo de Paladino foca na manutenção de buffs e versatilidade de papéis durante o combate.

### 🛡️ Smart Sealing & Engagement

```text
/lunpallyseal

```

Uma macro única que prepara o Paladino para a batalha:

1. Ativa a **API de Ataque** do CORE (sem spam).
2. Conjura o **Racial** apropriado automaticamente.
3. Equipa o Set de Itens **"SEAL"** via ItemRack.
4. Verifica se o **Seal of Righteousness** está ativo; caso contrário, o conjura.

### ⚕️ Adaptive Healing

```text
/lunpallyheal

```

Sistema de cura prioritário com suporte a modificadores:

* **Normal:** Cura o alvo atual.
* **SHIFT:** Auto-cura (foca em você mesmo).
* **CTRL:** Cura o seu **Focus** (definido via CORE).
* **Equipment:** Troca automaticamente para o Set **"HOLY"** antes de conjurar.

---

## 3. HUNTER MODULE (Beast Mastery & Marksmanship)

O módulo de Hunter elimina a microgestão de distância e combate melee/ranged.

### 🏹 Combat Flow

```text
/lunhunter

```

Uma lógica dinâmica que lê o campo de batalha em tempo real:

1. **Range Check:** Detecta se o alvo está em distância de Melee (~5 metros).
2. **Melee Logic:** Se perto, interrompe disparos, ativa o ataque de proximidade e utiliza **Raptor Strike** (com checagem de cooldown).
3. **Ranged Logic:** Se longe, inicia o **Auto Shot** e mantém a API de ataque ativa.

---

## 4. INTEGRATED UTILITIES

O Lunaty utiliza profundamente as APIs do CORE para garantir estabilidade:

* **ItemRack Integration:** Todas as trocas de set são "blindadas". Se o ItemRack não estiver ativo, o combate continua sem erros de LUA.
* **Focus Awareness:** Total integração com o sistema de Foco do CORE para suporte e utilidade em grupo.
* **Racial Engine:** Uso otimizado de habilidades raciais no início de cada ciclo de combate.

---

## 5. SLASH COMMANDS

| Comando | Classe | Descrição |
| --- | --- | --- |
| **`/lunpallyseal`** | Paladino | Inicia ataque, Racial, Set de Dano e Selo. |
| **`/lunpallyheal`** | Paladino | Troca para Set Holy e executa Cura Inteligente. |
| **`/lunhunter`** | Hunter | Alterna automaticamente entre Melee e Ranged. |

---

## 6. INSTALAÇÃO & REQUISITOS

📌 **IMPORTANTE:** Este módulo requer o **BadAzs CORE** instalado e ativo para funcionar.

1. Certifique-se de que a pasta `BadAzsCore` está em seu diretório AddOns.
2. Insira a pasta `BadAzsLunaty`.
3. Configure seus Sets no ItemRack com os nomes exatos: **"SEAL"** e **"HOLY"**.

---

**BadAzs LUNATY v1.6** *Mecânicas complexas, execução simples.*

---
