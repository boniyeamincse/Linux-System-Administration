[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 06: Linux Text Editors

## Topics Covered
- Introduction to 'vi/vim' and 'nano'
- Working with Different 'vi/vim' Modes
- Editing, Replacing, Searching with 'vi/vim'
- Advanced Vim features

---

## 1. Why Text Editors?
In Linux, "Everything is a file". Configuration, logs, and scripts are all plain text. A system administrator spends 50% of their time in a text editor.

- **Nano:** Beginner-friendly. Keys are displayed at the bottom (`Ctrl+O` to save, `Ctrl+X` to exit).
- **Vi / Vim (Vi Improved):** The standard. Available on almost every Unix system. Modal editor.

## 2. Vim Modes
Vim is powerful because it uses "Modes". You cannot type text immediately when you open it.

```text
       Open File
           |
           v
  +------------------+     'i', 'a', 'o'     +------------------+
  |   COMMAND MODE   |  ------------------>  |   INSERT MODE    |
  | (Navigation/Ops) |  <------------------  |  (Typing Text)   |
  +------------------+         'Esc'         +------------------+
           |
           | ':'
           v
  +------------------+
  |  LAST LINE MODE  |
  | (Save/Quit/Find) |
  +------------------+
```

## 3. Basic Vim Commands

**Navigation (Command Mode):**
- `h, j, k, l`: Left, Down, Up, Right
- `gg`: Go to top
- `G`: Go to bottom
- `w`: Jump to next word

**Editing:**
- `i`: Insert before cursor
- `a`: Append after cursor
- `o`: Open new line below
- `dd`: Delete (Cut) line
- `yy`: Yank (Copy) line
- `p`: Paste

**Saving/Exiting (Last Line Mode):**
- `:w`: Save
- `:q`: Quit
- `:wq` or `:x`: Save and Quit
- `:q!`: Quit without saving (Force)

**Searching:**
- `/pattern`: Search forward
- `n`: Next match
