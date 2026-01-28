[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 05: Linux Text Processing Tools

## Topics Covered
- Standard Input, Output and Error Concept
- Redirecting Output to a File (`>`, `>>`)
- Constructing and Using Pipelines (`|`)
- Working with `tail`, `head`, `cat`, `less`, `wc`, `echo`
- Working with Regular Expressions `grep`
- Finding files with `find` and `locate`

---

## 1. I/O Streams
Linux treats every process as having three communication channels:

| FD | Name | Description | Default Target |
| :--- | :--- | :--- | :--- |
| 0 | **STDIN** | Standard Input | Keyboard |
| 1 | **STDOUT** | Standard Output | Terminal Screen |
| 2 | **STDERR** | Standard Error | Terminal Screen |

## 2. Redirection
We can change where output goes or where input comes from.

- **`>` (Overwrite):** `ls > file.txt` (Writes output to file, deleting old content).
- **`>>` (Append):** `date >> log.txt` (Adds to the end of the file).
- **`2>` (Error Redirect):** `find / -name password 2> errors.txt` (Hides "Permission denied" errors).

## 3. The Pipe `|`
The Pipe is one of the most powerful features. It sends the **STDOUT** of Command A to the **STDIN** of Command B.

**Architecture:**
```text
[ Command 1 ] --(STDOUT)--> | PIPE | --(STDIN)--> [ Command 2 ]
```
*Example:* `cat /etc/passwd | head -n 5 | cut -d: -f1`
(Reads file -> takes first 5 lines -> extracts the username).

## 4. Text Tools
- **`cat`**: Concatenate and display files.
- **`less`**: View large files page by page (Navigation similar to Vim).
- **`head` / `tail`**: View the beginning or end of files.
  - `tail -f /var/log/syslog`: Follow log updates in real-time.
- **`grep`**: Global Regular Expression Print. Searches for patterns.
  - `grep -r "error" /var/log/`: Search recursively.
- **`find`**: Search for files by metadata (name, size, time).
  - `find /home -name "*.txt"`
